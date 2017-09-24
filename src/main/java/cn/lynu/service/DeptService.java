package cn.lynu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lynu.mapper.DepartmentMapper;
import cn.lynu.model.Department;

@Service
public class DeptService {
	
	@Autowired
	private DepartmentMapper departmentMapper;

	public List<Department> getAllDept() {
		return departmentMapper.selectByExample(null);
	}
	

}
