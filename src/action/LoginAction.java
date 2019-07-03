package action;

import Service.inter.AcademicService;
import Service.inter.AssignmentService;
import Service.inter.LTMService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Academic;
import entity.Assignment;
import entity.LTM;
import entity.Module;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import javax.servlet.http.HttpSession;
import java.util.Set;


/**
 * provide login logic
 * identifies different user type
 */
public class LoginAction extends ActionSupport {
    private AssignmentService assignmentService;
    private AcademicService academicService;
    private ApplicationContext context;
    private Academic academic;
    private String username;
    private String password;
    private LTMService ltmService;

    public void setAcademicService(AcademicService academicService) {
        this.academicService = academicService;
    }

    public AcademicService getAcademicService() {
        return academicService;
    }

    public void setAcademic(Academic academic) {
        this.academic = academic;
    }

    public Academic getAcademic() {
        return academic;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public String getUsername() {
        return username;
    }

    public LoginAction(){}

    public ApplicationContext getContext() {
        return context;
    }

    public void setContext(ApplicationContext context) {
        this.context = context;
    }

    public LTMService getLtmService() {
        return ltmService;
    }

    public void setLtmService(LTMService ltmService) {
        this.ltmService = ltmService;
    }




    /**
     * Implements login.
     * Get username and password from jsp page, retrieve from database and identifies user type (LTM, year tutor, academic)
     * @return : Information for page jumping
     */
    public String execute() throws Exception{
        context = new ClassPathXmlApplicationContext("applicationContext.xml");
        academicService = context.getBean(AcademicService.class);
        assignmentService = context.getBean(AssignmentService.class);
        ltmService = context.getBean(LTMService.class);
        HttpSession session = ServletActionContext.getRequest().getSession();
        LTM ltm = new LTM();
        ltm.setUsername(this.username);
        ltm.setPassword(this.password);
        LTM l;
        try{l = ltmService.login(ltm);}catch (Exception e){l = null;}
        if (l!=null){
            session.setAttribute("ltm", l);
            Set<Assignment> assignments = assignmentService.findAllAssignment();
            session.setAttribute("allAssignments", assignments);
            Set<Module> modules = assignmentService.findAllModule();
            session.setAttribute("allModule", modules);
            return "ltm";
        }else{
            Academic academic = new Academic();
            academic.setAccount(this.username);
            academic.setPassword(this.password);
            Academic ac;
            try{ac = academicService.login(academic);}catch (Exception e){ac = null;}

            if (ac != null){
                session.setAttribute("ac", ac);
                if(ac.getIsYear()==null){
                return "acd";}else{
                    Set<Assignment> assignments = assignmentService.findAllAssignment();
                    Set<Module> modules = assignmentService.findAllModule();
                    session.setAttribute("allAssignments", assignments);
                    session.setAttribute("allModule", modules);
                    return "year";
                }
            }
            ActionContext.getContext().put("message","wrong username or password");
            return ERROR;
        }
    }
}


