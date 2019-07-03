package Dao.impl;

import Dao.inter.AcademicDao;
import entity.Academic;
import entity.Assignment;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

import javax.management.Query;
import java.util.List;

@Repository
public class AcademicDaoImpl extends SuperDao implements AcademicDao {

    public AcademicDaoImpl() {}

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public String findAcademic(String academicName){
//        String hql = " SELECT name from assignment where id=?";
//        Query query = (Query) getSession().createQuery(hql).setInteger(0, academicName);
//        String str = query.toString();
//        return str;
        return null;
    }
//  login function
    public Academic select(Academic academic) {

        String hql = "from Academic a where a.account= "+academic.getAccount()+" and a.password= "+ academic.getPassword();

        Academic ac=(Academic) super.check(hql);

        return ac;
    }

//  create
    @Override
    public void saveAcademic(Academic academic) {
        getSession().save(academic);
    }

    @Override
    public void setSessionFactory(LocalSessionFactoryBean sessionFactory) {

    }

    @Override
    public void delAcademic(String academicName) {

    }

    @Override
    public void updateAcademic(Academic academic) {

    }

    @Override
    public void getAcademic(String academicName) {

    }

    @Override
    public List<Academic> searchAcademic(Academic academic) {
        return null;
    }

    @Override
    public List<Academic> searchAcademic(String hql) {
        return null;
    }

//    @Override
//    public String findAcademic(String academicName) {
//        return null;
//    }
}
