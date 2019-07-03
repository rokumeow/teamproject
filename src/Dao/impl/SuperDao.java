package Dao.impl;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import entity.Academic;
import entity.Assignment;
import entity.Module;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

public class SuperDao extends HibernateDaoSupport {

	private SessionFactory superSessionFactory;

	public SessionFactory getSuperSessionFactory() {
		return superSessionFactory;
	}

	public void setSuperSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}


	public Serializable add(Object entity) {

		Serializable id = this.getHibernateTemplate().save(entity);

		return id;
	}


	public void delete(Object entity) {

		this.getHibernateTemplate().delete(entity);

	}


	public void update(Object entity) {
		this.getHibernateTemplate().update(entity);
	}


	public Object select(Class clazz, Serializable id) {

		Object obj = this.getHibernateTemplate().load(clazz, id);

		return obj;
	}

	public Object select(String hql) {

		Object obj = this.getHibernateTemplate().find(hql);

		return obj;
	}

//	public List<Object> find(String s) {
//
//		List<Object> list = this.getHibernateTemplate().find(s);
//
//		return list;
//	}

	// select login-user
	public Object check(String hql) {

//		List list = this.getHibernateTemplate().find(hql, condition);
//		if (list.size() != 0)
//			return list.get(0);
//
//		else
//			return null;
		List list = this.getHibernateTemplate().find(hql);
		if (list.size() == 1)
			return list.get(0);
		else
			return null;
	}


	public List<Object> getAllObject(String hql) {

		List list = this.getHibernateTemplate().find(hql);

		if (list.size() != 0) {
			return list;
		}
		else {
			return null;
		}

	}



//	@SuppressWarnings("unchecked")
//	public List<Object> selectPage(int index, Class clazz, String bhql) {
//
//		final int PAGETOTAL = 10;
//
//		List<Object> list = null;
//
//		final int page = index;
//
//		final String hql = "from " + clazz.getName() + " as s where 1=1" + bhql;
//
//		list = this.getHibernateTemplate().executeFind(new HibernateCallback() {
//			public Object doInHibernate(Session session)
//					throws HibernateException, SQLException {
//				List result = session.createQuery(hql).setFirstResult(
//						(page - 1) * PAGETOTAL).setMaxResults(PAGETOTAL).list();
//				return result;
//			}
//		});
//
//		return list;
//	}
}
