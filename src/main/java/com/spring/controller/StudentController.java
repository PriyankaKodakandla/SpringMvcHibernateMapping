package com.spring.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dao.StudentDaoImp;
import com.spring.model.Address;
import com.spring.model.Branch;
import com.spring.model.Phone;
import com.spring.model.Student;

@Controller
public class StudentController {
	@Autowired
	public StudentDaoImp stdDaoImp;
	@RequestMapping(value = "/addStudent")
	public String add(@ModelAttribute("student") Student student,@ModelAttribute("address") Address address, 
			@ModelAttribute("phone") Phone phone,@ModelAttribute("branch") Branch branch,Model model) {
		int i = stdDaoImp.insertStd(student,address,phone,branch);
		System.out.println(i);
		model.addAttribute("Student", student);
		return "display.jsp";
	}
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView("studentList.jsp");
		mav.addObject("students", stdDaoImp.listAll());
		return mav;
	}
}
