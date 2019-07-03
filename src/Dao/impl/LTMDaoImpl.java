package Dao.impl;

import Dao.inter.LTMDao;
import entity.LTM;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

import java.util.List;

public class LTMDaoImpl extends SuperDao implements LTMDao {

    public LTMDaoImpl(){}

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public LTM getLTM(LTM ltm){
        LTM re = getSession().get(LTM.class,ltm.getUsername());
//        System.out.println(re.getUsername());
        if(re.getUsername().equals(ltm.getUsername()) && re.getPassword().equals(ltm.getPassword())) {
        return re;}else {return null;}


    }

    @Override
    public void addLTM(LTM ltm) {

    }

    @Override
    public void delLTM(String username) {

    }

    @Override
    public void update(LTM ltm) {

    }

    @Override
    public void setSessionFactory(LocalSessionFactoryBean sessionFactory) {

    }
    @Override
    public List<LTM> searchLTM(LTM ltm) {
        return null;
    }

    @Override
    public List<LTM> searchLTM(String hql) {
        return null;
    }
}
