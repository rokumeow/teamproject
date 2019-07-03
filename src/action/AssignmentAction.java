package action;


import Service.inter.AssignmentService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Academic;
import entity.Assignment;
import entity.Module;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

import static java.lang.Boolean.FALSE;
import static java.lang.Boolean.TRUE;


/**
 * Controls assessment retrieving, updating, adding and deleting
 */
public class AssignmentAction extends ActionSupport {
    private Academic academic;
    private String semester;
    private AssignmentService assignmentService;
    private ApplicationContext context;
    private String moduleCode;
    private Set<Module> modules;
    private String asName;
    private String asFormat;
    private String asMarks;
    private String asStTime;
    private String asEndTime;
    private String asId;

    public void setAsId(String asId) {
        this.asId = asId;
    }

    public String getAsId() {
        return asId;
    }

    public void setAsEndTime(String asEndTime) {
        this.asEndTime = asEndTime;
    }

    public void setAsFormat(String asFormat) {
        this.asFormat = asFormat;
    }

    public void setAsMarks(String asMarks) {
        this.asMarks = asMarks;
    }

    public void setAsName(String asName) {
        this.asName = asName;
    }

    public void setAsStTime(String asStTime) {
        this.asStTime = asStTime;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getSemester() {
        return semester;
    }

    public String getAsEndTime() {
        return asEndTime;
    }

    public String getAsFormat() {
        return asFormat;
    }

    public String getAsMarks() {
        return asMarks;
    }

    public String getAsName() {
        return asName;
    }

    public String getAsStTime() {
        return asStTime;
    }

    public void setAcademic(Academic academic) {
        this.academic = academic;
    }

    public Academic getAcademic() {
        return academic;
    }

    public void setModules(Set<Module> modules) {
        this.modules = modules;
    }

    public Set<Module> getModules() {
        return modules;
    }

    public void setModuleCode(String moduleCode) {
        this.moduleCode = moduleCode;
    }

    public String getModuleCode() {
        return moduleCode;
    }


    public void setAssignmentService(AssignmentService assignmentService) {
        this.assignmentService = assignmentService;
    }

    public AssignmentService getAssignmentService() {
        return assignmentService;
    }

    public void setContext(ApplicationContext context) {
        this.context = context;
    }

    public ApplicationContext getContext() {
        return context;
    }

    /**
     * Check an assignment by its id from a set of assignment, return true if it exists
     * @param set : set of assignment
     * @param a : query
     * @return : The existence of the query in the dataset
     */
    private Boolean search(Set<Assignment> set, Assignment a){
        for (Assignment i: set){
            boolean r=a.getAssignmentID() == i.getAssignmentID();
            if(r){
                return TRUE;
            }
        }
        return FALSE;
    }

    /**
     * given a set of assignment, calculate the sum of mark
     * @param  set : a set of assignment
     * @return : the sum of mark of these assignments
     */
    private int getMark(Set<Assignment> set){
        int mark = 0;
        for(Assignment i:set){
            mark += Integer.parseInt(i.getMarks());
        }
        return mark;
    }


    /**
     * implements adding new assignment
     * get assignment information from jsp page, add to database
     * @return : Information for page Jumping
     */
    @Override
    public String execute() throws Exception {
        HttpSession session = ServletActionContext.getRequest().getSession();
        Module module = (Module) session.getAttribute("module");
        context = new ClassPathXmlApplicationContext("applicationContext.xml");
        assignmentService = context.getBean(AssignmentService.class);
        Set<Assignment> a_set = module.getAssignments();
        Assignment assignment = new Assignment();
        assignment.setModuleCode(module.getModuleCode());
        assignment.setSemester(module.getSemester());
        assignment.setName(getAsName());
        assignment.setFormat(getAsFormat());
        assignment.setMarks(getAsMarks());
        String stTime =getAsStTime().replaceAll("-","/");
        String edTime =getAsEndTime().replaceAll("-","/");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");

        if(!getAsStTime().equals("")){
            String stDate = stTime.split(" ")[0];
            Date startD = sdf.parse(stDate);
            assignment.setStartTime(df.format(startD));}
        if(!getAsEndTime().equals("")){
            String edDate = edTime.split(" ")[0];
            Date endD = sdf.parse(edDate);
            assignment.setEndTime(df.format(endD));}

        if(!assignment.getName().equals("") &&
                assignment.getEndTime()!= null &&
                !assignment.getFormat().equals("") &&
                !assignment.getMarks().equals("")){

            a_set = module.getAssignments();

            if(getMark(a_set)+Integer.parseInt(assignment.getMarks())<=100){
                ActionContext.getContext().put("message", "assignment added");
                assignmentService.saveAssignment(assignment);
                return SUCCESS;
            }else{
                System.out.println("the sum of mark is out of range");
                ActionContext.getContext().put("message","the sum of mark is out of range");
                return SUCCESS;
            }

        }
        session.setAttribute("module", module);
        ActionContext.getContext().put("message", "Missing key information");
        return SUCCESS;
    }




    /**
     * implements updating assignment information
     * get assignment information from jsp page, update if the information is not null
     * @return : Information for page jumping
     */
    public String update() throws Exception{
        HttpSession session = ServletActionContext.getRequest().getSession();
        Module module = (Module) session.getAttribute("module");
        context = new ClassPathXmlApplicationContext("applicationContext.xml");
        assignmentService = context.getBean(AssignmentService.class);
        Assignment assignment = new Assignment();
        String id = getAsId();
        if(id!=null){assignment.setAssignmentID(Integer.parseInt(id));
        }else{
            ActionContext.getContext().put("message","id cannot be empty");
            return SUCCESS;}
        Set<Assignment> a_set = module.getAssignments();
        if(search(a_set, assignment)){
            for (Assignment i: a_set){
                boolean r=assignment.getAssignmentID() == i.getAssignmentID();
                if(r){
                    i.setModuleCode(module.getModuleCode());
                    i.setSemester(module.getSemester());
                    if(!getAsName().equals("")){
                        i.setName(getAsName());
                    }
                    if(getAsFormat()!=null){i.setFormat(getAsFormat());}
                    if(!getAsMarks().equals("")) {
                        if (getMark(a_set) + Integer.parseInt(getAsMarks()) <= 100) {
                            i.setMarks(getAsMarks());
                        } else {
                            ActionContext.getContext().put("message", "the sum of mark is out of range");
                            return SUCCESS;
                        }
                    }
                    String stTime =getAsStTime().replaceAll("-","/");
                    String edTime =getAsEndTime().replaceAll("-","/");

                    if(getAsStTime()!=null && !getAsStTime().equals("")){i.setStartTime(stTime);}
                    if(getAsEndTime()!=null && !getAsEndTime().equals("")){i.setEndTime(edTime);}

                    assignmentService.updateAssignment(i);
                    session.setAttribute("module", module);
                    ActionContext.getContext().put("message", "assignment updated");

                    break;
                }
            }
            return SUCCESS;
        }
        ActionContext.getContext().put("message", "invalid id");
        return SUCCESS;
    }


    /**
     * implements assignment deletion
     * retrieve assignment with id, delete it
     * @return : Information for page jumping
     */
    public String delete() throws Exception{
        HttpSession session = ServletActionContext.getRequest().getSession();
        Module module = (Module) session.getAttribute("module");
        context = new ClassPathXmlApplicationContext("applicationContext.xml");
        assignmentService = context.getBean(AssignmentService.class);
        String id = getAsId();
        if(id!=null){assignmentService.delAssignment(Integer.parseInt(getAsId()));
        }else{
            ActionContext.getContext().put("message","id cannot be empty");
            return SUCCESS;}
        ActionContext.getContext().put("message", "assignment deleted");
        session.setAttribute("module", module);
        return SUCCESS;
    }

}

