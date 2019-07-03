package action;

import com.opensymphony.xwork2.ActionSupport;
import entity.Academic;
import org.apache.struts2.ServletActionContext;
import entity.Module;
import javax.servlet.http.HttpSession;
import java.util.Set;
/**
 * go to booklet for LTM and Year tutor
 * go to editing page for academics
 */
public class ModuleAction extends ActionSupport {
    private String moduleCode;
    private String moduleSemester;
    private Academic academic;
    private Set<Module> modules;

    public void setModules(Set<Module> modules) {
        this.modules = modules;
    }

    public Set<Module> getModules() {
        return modules;
    }

    public void setAcademic(Academic academic) {
        this.academic = academic;
    }

    public Academic getAcademic() {
        return academic;
    }

    public String getModuleCode() {
        return moduleCode;
    }

    public void setModuleCode(String moduleCode) {
        this.moduleCode = moduleCode;
    }

    public String getModuleSemester() {
        return moduleSemester;
    }

    public void setModuleSemester(String moduleSemester) {
        this.moduleSemester = moduleSemester;
    }

    /**
     * Retrieve module by code and semester from modules which the target academic teaches
     * @param set: a set of modules
     * @param m: query module
     * @return : the retrieved module
     */
    private Module search(Set<Module> set, Module m){

        for (Module i:set){
            boolean r = m.getModuleCode().equals(i.getModuleCode()) && m.getSemester().equals(i.getSemester());
            if(r){
                return i;
            }
        }
        return null;
    }

    /**
     * select the target module for academic to edit.
     * @return : Information for page jumping
     */
    @Override
    public String execute() throws Exception {

        HttpSession session = ServletActionContext.getRequest().getSession();
        academic = (Academic) session.getAttribute("ac");
        modules = academic.getModules();
        Module module = new Module();
        module.setSemester(getModuleSemester());
        module.setModuleCode(getModuleCode());
        if(modules.contains(module)){
            module = search(modules, module);}
        session.setAttribute("module", module);
        return SUCCESS;
    }

    /**
     * select the target module for LTM or year tutor to view.
     * @return : Information for page jumping
     */
    public String booklet() throws Exception
    {
        HttpSession session = ServletActionContext.getRequest().getSession();
        modules = (Set<Module>) session.getAttribute("allModule");
        Module module = new Module();
        module.setSemester(getModuleSemester());
        module.setModuleCode(getModuleCode());
        if(modules.contains(module)){
            module = search(modules, module);}
        session.setAttribute("module", module);
        return SUCCESS;
    }
}
