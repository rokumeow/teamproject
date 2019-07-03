package Dao.inter;

import entity.Module;

import java.util.List;

public interface ModuleDao {
    void addModule(Module module);
    void delModule(int moduleCode);
    void updateModule(Module module);
    void getModule(int moduleCode);
    List<Module> searchModule(Module module);
    List<Module> searchModule(String hql);
}
