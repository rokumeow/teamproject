package Dao.inter;

import entity.LTM;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

import java.util.List;

public interface LTMDao {
    void addLTM(LTM ltm);
    void delLTM(String username);
    void update(LTM ltm);
    LTM getLTM(LTM ltm);
    List<LTM> searchLTM(LTM ltm);
    List<LTM> searchLTM(String hql);
    void setSessionFactory(LocalSessionFactoryBean sessionFactory);
}
