package Service.impl;

import Dao.impl.AssignmentDaoImpl;
import Dao.impl.SuperDao;
import Dao.inter.AssignmentDao;
import Service.inter.AssignmentService;
import entity.Assignment;
import entity.Module;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service("AssignmentService")
public class AssignmentServiceImpl implements AssignmentService {

    // Constructor
    public AssignmentServiceImpl(){}

    @Autowired
    private AssignmentDao assignmentDao;

    // setter
    public void setAssignmentDao(AssignmentDaoImpl assignmentDao) {
        this.assignmentDao = assignmentDao;
    }

    // getter
    public AssignmentDao getAssignmentDao() {
        return assignmentDao;
    }

    // retrieve assignment by id
    public Assignment findAssignment(int assignmentID){
        return assignmentDao.findAssignment(assignmentID);
    }

    // retrieve assignment by module code
    public Set<Assignment> findAssignmentsByModule(Module module){
        return assignmentDao.findAssignmentsByModule(module);
    }

    // create assignment
    public void saveAssignment(Assignment assignment) {
        assignmentDao.saveAssignment(assignment);
    }

    // retrieve all assignments
    public Set<Assignment> findAllAssignment(){
        return assignmentDao.findAllAssignment();
    }

    // retrieve modules
    @Override
    public Set<Module> findAllModule() {
        return assignmentDao.findAllModule();
    }

    // delete assignment by id
    public void delAssignment(int assignmentId) {
        assignmentDao.delAssignment(assignmentId);
    }

    // update assignments
    public void updateAssignment(Assignment assignment) {
        assignmentDao.updateAssignment(assignment);
    }

}
