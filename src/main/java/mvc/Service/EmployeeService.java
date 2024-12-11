package mvc.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import mvc.Dao.EmployeeDao;
import mvc.Dto.Employee;

@Service
public class EmployeeService 
{
	 @Autowired
	 EmployeeDao dao;
	 
	 public String add(Employee employee,ModelMap map)
	 {
		 dao.save(employee);
			map.put("success", "Record Added Success");
			return "home.jsp";
	 }
	 
	 public String fetch(ModelMap map)
	 {
		 List<Employee> list=dao.fetchAll();
		 if(list.isEmpty())
		 {
			 map.put("failure", "data is not there");
			 return "home.jsp";
		 }
		 else
		 {
			 map.put("list", list);
			 return "fetch.jsp";
		 }
	 }

	public String edit(int id, ModelMap map) 
	{
		Employee employee=dao.find(id);
		map.put("emp", employee);
		return "edit.jsp";
	}

	public String delete(int id, ModelMap map) 
	{
		Employee employee=dao.find(id);
		dao.delete(employee);
		map.put("success", "Record deleted successful");
		return "fetch";
	}

	public String update(Employee employee, ModelMap map) {
		dao.update(employee);
		map.put("success", "record updated successfully");
		return "fetch";
	}
		
		
}
