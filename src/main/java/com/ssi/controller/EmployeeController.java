package com.ssi.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ssi.model.Emp;
import com.ssi.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeservice;
	
	@RequestMapping("entryform")
	public String viewEntryForm() {
		return "EntryForm.jsp";
	}
	
	//search employee by id or ename
	@RequestMapping("searchemp")
	public ModelAndView searchEmployee(@RequestParam("enoename") String enoename){
		List<Emp> emplist = employeeservice.searchEmp(enoename);
		ModelAndView mv = new ModelAndView("index.jsp");
		mv.addObject("EmpList",emplist);
		if(emplist.size()>0) 
		{
		mv.addObject("searchresult", true);
		}
		else {
			mv.addObject("searchresult", false);
		}
		return mv;
	}
	
	//insert an employee data in table
	@RequestMapping("entryemployee")
	public ModelAndView employeeEntry(@ModelAttribute("entryform") Emp emp) {
		Emp e = employeeservice.save(emp);
		ModelAndView mv = new ModelAndView("EntryForm.jsp");
		if(e != null) {
			mv.addObject("Emp", e);
			mv.addObject("result", true);
		}
		else {
		mv.addObject("result",false);
		
		}
		return mv;
	}
	
	//provide employee list
	@RequestMapping("getallemployee")
	public ModelAndView allEmployee() {
		List<Emp> emplist = employeeservice.getAllEmployees();
		ModelAndView mv = new ModelAndView("EmployeeList.jsp");
		mv.addObject("EmpList",emplist);
		return mv;
	}
	
	//get employee details
	@RequestMapping("updatepage")
	public ModelAndView getUpdateEmp(@RequestParam("eno") int eno) {
		Emp e = employeeservice.get(eno);
		ModelAndView mv = new ModelAndView("UpdateEmp.jsp");
		mv.addObject("Emp", e);
		return mv;
	}
	
	//update employee data
	@RequestMapping("updateemp")
	public ModelAndView updateEmp(@ModelAttribute("updatedEmp") Emp emp) {
		Emp e = employeeservice.update(emp);
		ModelAndView mv = new ModelAndView("UpdateEmp.jsp");
		mv.addObject("Emp",e);
		mv.addObject("Result",true);
		return mv;
	}
	
	//delete employee
	@RequestMapping("deleteemp")
	public ModelAndView deleteEmp(@RequestParam("eno") int eno) {
		Boolean result = employeeservice.delete(eno);
		ModelAndView mv = new ModelAndView("DeleteEmpResult.jsp");
		mv.addObject("Result", result);
		return mv;
	}

}
