package Dao.inter;

import entity.*;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

import java.util.List;

public interface AcademicDao {

    void delAcademic(String academicName);
    void updateAcademic(Academic academic);
    void getAcademic(String academicName);
    Academic select(Academic academic);
    List<Academic> searchAcademic(Academic academic);
    List<Academic> searchAcademic(String hql);

    String findAcademic(String academicName);
    void saveAcademic(Academic academic);

    void setSessionFactory(LocalSessionFactoryBean sessionFactory);
}
