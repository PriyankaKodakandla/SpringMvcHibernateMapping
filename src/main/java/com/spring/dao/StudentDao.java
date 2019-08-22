package com.spring.dao;

import java.util.List;
import com.spring.model.Address;
import com.spring.model.Branch;
import com.spring.model.Phone;
import com.spring.model.Student;



public interface StudentDao {
	public int insertStd(Student std,Address add,Phone ph,Branch branch);
	public int updateStd(Student std);
	public Student search(int std_id);
	public int delete(int id); 
	public Student getObject(int id);
	public List<Student> listAll();
}
