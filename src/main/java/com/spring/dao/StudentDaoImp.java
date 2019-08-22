package com.spring.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.spring.model.Address;
import com.spring.model.Branch;
import com.spring.model.Phone;
import com.spring.model.Student;

public  class StudentDaoImp implements StudentDao{
	@Autowired
	SessionFactory sessionFactory;

	public int insertStd(Student std,Address add,Phone phone,Branch branch) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();

		Transaction trnx = session.beginTransaction();
		Set<Phone> list= new HashSet<Phone>();
		list.add(phone);
		std.setPhone(list);
		std.setBranch(branch);
		std.setAddress(add); 
		int primary = (Integer) session.save(std);
		System.out.println("primary = " + primary);

		trnx.commit();

		session.close(); 

		return primary;
	}

	public int updateStd(Student std) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Student search(int std_id) {
		// TODO Auto-generated method stub
		return null;
	}

	public int delete(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Student getObject(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Student> listAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();

		List<Student> list = new ArrayList();

		Query query = session.createQuery("from Student");

		list = query.list();

		session.close();

		return list;
	}

}
