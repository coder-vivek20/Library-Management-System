package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import model.User;

import model.*; 

public class UserDao {
 
	 SessionFactory factory = HibernateUtil.getSessionFactory();
	 
	 public void saveUser(User user) {
	        Transaction transaction = null;
	        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
	            
	            transaction = session.beginTransaction();
	            
	            session.save(user);
	           
	            transaction.commit();
	        } catch (Exception e) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            e.printStackTrace();
	        }
	    }
	 
	 
	 public User validateUser(String username, String password) {
	        Session session = factory.openSession();
	        User user = null;
	        
	        try {
	            String hql = "FROM User U WHERE U.name = :username AND U.password = :password";
	            Query<User> query = session.createQuery(hql, User.class);
	            query.setParameter("username", username);
	            query.setParameter("password", password);
	            user = query.uniqueResult();
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }

	        return user;
	    }
	 
	 public Admin validateAdmin(String username, String password) {
		    Session session = factory.openSession();
		    Admin admin = null;

		    try {
		        String hql = "FROM Admin A WHERE A.username = :username AND A.password = :password";
		        Query<Admin> query = session.createQuery(hql, Admin.class);
		        query.setParameter("username", username);
		        query.setParameter("password", password);
		        admin = query.uniqueResult();
		    } catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        session.close();
		    }

		    return admin;
		}
	 
	 public void deleteUserById(String userId) {
		    Session session = HibernateUtil.getSessionFactory().openSession();
		    Transaction tx = null;

		    try {
		        tx = session.beginTransaction();
		        User user = session.get(User.class, userId);
		        session.delete(user);
		        tx.commit();
		    } catch (Exception e) {
		        if (tx != null) tx.rollback();
		        e.printStackTrace();
		    } finally {
		        session.close();
		    }
		}

	 
	 public List<User> getAllUsers() {
	        try (Session session = factory.openSession()) {
	            String hql = "FROM User";
	            Query<User> query = session.createQuery(hql, User.class);
	            return query.list();
	        } catch (Exception e) {
	            e.printStackTrace();
	            return null;
	        }
	    }
	}

