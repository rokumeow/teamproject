package Dao.inter;

import entity.*;
import entity.Module;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

import java.util.List;
import java.util.Set;

public interface AssignmentDao {

    void addAssignment(Assignment assignment);
    void delAssignment(int assignmentId);
    void updateAssignment(Assignment assignment);
    Assignment findAssignment(int assignmentId);
    List<Assignment> searchAssignment(Assignment assignment);
    List<Assignment> searchAssignment(String hql);

    Set<Assignment> findAssignmentsByModule(Module module);
    Set<Assignment> findAllAssignment();
    Set<Module> findAllModule();

    void saveAssignment(Assignment assignment);
    void setSessionFactory(LocalSessionFactoryBean sessionFactory);
}
