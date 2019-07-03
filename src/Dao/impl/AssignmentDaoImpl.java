package Dao.impl;

import Dao.inter.AssignmentDao;
import entity.Assignment;
import entity.Module;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Repository
public class AssignmentDaoImpl extends SuperDao implements AssignmentDao {

    public AssignmentDaoImpl(){}

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }


    public Assignment findAssignment(int assignmentId) {

        String hql = "from Assignment a where a.assignmentID = " + assignmentId;
        Assignment re = (Assignment)super.check(hql);
        System.out.println(re.getName());
        getSession().refresh(re);
        return re;
    }
//  find assignment by module
    public Set<Assignment> findAssignmentsByModule(Module module){
        Module res = getSession().get(Module.class, module);
        Set<Assignment> assignments = res.getAssignments();
        getSession().refresh(assignments);
        return assignments;
    }

//  get all assignments
    public Set<Assignment> findAllAssignment(){
        String hql = "from Assignment a";
        List<Object> res = super.getAllObject(hql);
        return List2Set(res);
    }
//  create
    public void saveAssignment(Assignment assignment) {
        getSession().save(assignment);
    }

    public void addAssignment(Assignment assignment) {

    }
//  Delete
    public void delAssignment(int assignmentId) {
        Assignment assignment = findAssignment(assignmentId);
        if (assignment != null) {
            getSession().delete(assignment);
        }
    }
//  Update
    public void updateAssignment(Assignment assignment) {
        if (assignment != null) {
            getSession().update(assignment);
        }

    }

    public List<Assignment> searchAssignment(Assignment assignment) {
        return null;
    }

    public List<Assignment> searchAssignment(String hql) {
        return null;
    }

    public void setSessionFactory(LocalSessionFactoryBean sessionFactory) {

    }

    private Set<Assignment> List2Set(List<Object> list){
        List<Assignment> newList=new ArrayList<Assignment>();
        for(int i = 0;i<list.size();i++){
            Object temp = list.get(i);
            newList.add((Assignment)temp);
        }
        return new HashSet<Assignment>(newList);
    }
//  find all module
    public Set<Module> findAllModule(){
        String hql = "from Module a";
        List<Object> res = super.getAllObject(hql);
        return ListtoSet(res);
    }
//  change list to set
    private Set<Module> ListtoSet(List<Object> list){
        List<Module> newList=new ArrayList<Module>();
        for(int i = 0;i<list.size();i++){
            Object temp = list.get(i);
            newList.add((Module)temp);
        }
        return new HashSet<Module>(newList);
    }
}
