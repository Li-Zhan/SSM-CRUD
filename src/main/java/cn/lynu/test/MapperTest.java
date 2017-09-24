package cn.lynu.test;

import java.util.UUID;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.lynu.mapper.DepartmentMapper;
import cn.lynu.mapper.EmployeeMapper;
import cn.lynu.model.Department;
import cn.lynu.model.Employee;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/applicationContext.xml"})
public class MapperTest {
	
	@Autowired
	DepartmentMapper departmentMapper;
	
	@Autowired
	EmployeeMapper employeeMapper;
	
	@Test
	public void fun1(){
//		System.out.println(employeeMapper.selectByExampleWithDept(null).size());
//		departmentMapper.insertSelective(new Department(null, "研发部"));
//		departmentMapper.insertSelective(new Department(null, "测试部"));
		
//		employeeMapper.insertSelective(new Employee(null, "李展", "1", "11@163.com", 1));
		
//		for(int i=0;i<100;i++){
//			String uuid=UUID.randomUUID().toString().substring(0,5);
//			employeeMapper.insertSelective(new Employee(null, i+uuid, "1", uuid+"@qq.com", 1));
//		}
		
		//System.out.println(departmentMapper.selectByPrimaryKey(1));
		
	}

}
