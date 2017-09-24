package cn.lynu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.lynu.model.Department;
import cn.lynu.model.Msg;
import cn.lynu.service.DeptService;

@Controller
public class DeptController {
	
	@Autowired
	private DeptService deptService;
	
	/**
	 * 得到所有部门信息
	 */
	@RequestMapping("/getAllDept.action")
	@ResponseBody
	public Msg getAllDept(){
		List<Department> list=deptService.getAllDept();
		return Msg.success().add("depts", list);
	}

}
