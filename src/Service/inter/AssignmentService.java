package Service.inter;

import entity.Assignment;
import entity.Module;

import java.util.List;
import java.util.Set;

public interface AssignmentService {

     // assignments CRUD interfaces
     void saveAssignment(Assignment assignment);
     void delAssignment(int assignmentId);
     void updateAssignment(Assignment assignment);
     Assignment findAssignment(int assignmentID);
     Set<Assignment> findAssignmentsByModule(Module module);
     Set<Assignment> findAllAssignment();
     Set<Module> findAllModule();
}
