package cn.lynu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lynu.mapper.EmployeeMapper;
import cn.lynu.model.Employee;
import cn.lynu.model.EmployeeExample;
import cn.lynu.model.EmployeeExample.Criteria;

@Service
public class EmplService {
	
	@Autowired
	private EmployeeMapper employeeMapper;

	public List<Employee> getAllEmps() {
		return employeeMapper.selectByExampleWithDept(null);
	}

	public void saveEmpl(Employee employee) {
		employeeMapper.insertSelective(employee);
	}

	public boolean hasEmpName(String empName) {
		EmployeeExample example=new EmployeeExample();
		Criteria criteria = example.createCriteria();
		criteria.andEmpNameEqualTo(empName);
		long count = employeeMapper.countByExample(example);
		return count==0;
	}

	public Employee getEmp(Integer id) {
		return employeeMapper.selectByPrimaryKey(id);
	}

	public void updateEmp(Employee employee) {
		employeeMapper.updateByPrimaryKeySelective(employee);
	}

	public void deleteEmpById(Integer id) {
		employeeMapper.deleteByPrimaryKey(id);
	}

	public void deleteEmpBatch(List<Integer> list) {
		EmployeeExample example=new EmployeeExample();
		Criteria criteria = example.createCriteria();
		criteria.andEmpIdIn(list);
		employeeMapper.deleteByExample(example);
	}
	
	

}
