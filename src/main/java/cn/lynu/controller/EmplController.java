package cn.lynu.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.lynu.model.Employee;
import cn.lynu.model.Msg;
import cn.lynu.service.EmplService;

@Controller
public class EmplController {
	
	@Autowired
	private EmplService emplService;
	
	
	/**
	 * 单个,批量二合一
	 * 批量id如(1-2-3)
	 * 根据id删除员工
	 */
	@RequestMapping(value="/emp/{ids}",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg deleteEmpById(@PathVariable("ids") String ids) {
		if(ids.contains("-")) {
			List<Integer> list=new ArrayList<Integer>();
			String[] str_ids = ids.split("-");
			for (String string : str_ids) {
				list.add(Integer.parseInt(string));
			}
			emplService.deleteEmpBatch(list);
		}else {
			emplService.deleteEmpById(Integer.parseInt(ids));
		}
		return Msg.success();
	}
	
	
	/**
	 * 根据id修改员工信息
	 */
	@RequestMapping(value="/emp/{empId}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg updateEmp(Employee employee) {
		emplService.updateEmp(employee);
		return Msg.success();
	}
	
	
	
	/**
	 * 根据id查询员工信息
	 */
	@RequestMapping(value="/emp/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getEmp(@PathVariable("id") Integer id) {
		Employee employee=emplService.getEmp(id);
		return Msg.success().add("emp",employee);
	}
	
	
	/**
	 * 是否存在姓名
	 */
	@RequestMapping("/hasEmpName.action")
	@ResponseBody
	public Msg hasEmpName(@RequestParam("empName")String empName){
		
		//需要将姓名的验证规则统一
		//1.用户名可以是2-5位中文或者3-16位英文和数字的组合
		//2.数据库中不能有相同姓名
		String reg="(^[a-zA-Z0-9]{3,16})|(^[\u2E80-\u9FFF]{2,5})";
		if(!empName.matches(reg)){
			return Msg.fail().add("va_msg", "用户名可以是2-5位中文或者3-16位英文和数字的组合");
		}
		
		if(emplService.hasEmpName(empName)){
			return Msg.success();
		}
		return Msg.fail().add("va_msg","用户名重复不可用");
	}
	
	/**
	 * 保存Empl
	 */
	//使用RestFul风格的url
	@RequestMapping(value="/saveEmpl.action",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveEmpl(@Valid Employee employee,BindingResult result){
		if(result.hasErrors()){
			//校验失败 显示错误信息
			Map<String, Object> map=new HashMap<>();
			List<FieldError> list = result.getFieldErrors();
			for (FieldError fieldError : list) {
//				System.out.println("错误字段名:"+fieldError.getField());
//				System.out.println("错误信息:"+fieldError.getDefaultMessage());
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorField", map);
		}else{
			emplService.saveEmpl(employee);
			return Msg.success();
		}
	}
	
	
	/**
	 * 导入jackson包
	 * @param pn
	 * @return
	 */
	@RequestMapping("/getAllEmps.action")
	@ResponseBody
	public Msg getAllEmpsWithJson(@RequestParam(value="pn",defaultValue="1") Integer pn){
		
		//引入PageHelper分页插件
		//传入当前页和每页记录数
		PageHelper.startPage(pn, 5);
		
		//startPage后面的查询就变成了分页查询
		List<Employee> list=emplService.getAllEmps();
		
		//将结果给PageInfo,并将PageInfo交给页面即可
		//PageInfo封装了查出来的数据和页码数据
		//这个构造器表示连续显示5页
		PageInfo pageInfo=new PageInfo(list, 5);
		
		return Msg.success().add("pageInfo", pageInfo);
		
	}
	
	/*@RequestMapping("/getAllEmps.action")
	public String getAllEmps(@RequestParam(value="pn",defaultValue="1") Integer pn,Model model){
		
		//引入PageHelper分页插件
		//传入当前页和每页记录数
		PageHelper.startPage(pn, 5);
		
		//startPage后面的查询就变成了分页查询
		List<Employee> list=emplService.getAllEmps();
		
		//将结果给PageInfo,并将PageInfo交给页面即可
		//PageInfo封装了查出来的数据和页码数据
		//这个构造器表示连续显示5页
		PageInfo pageInfo=new PageInfo(list, 5);
		model.addAttribute("pageInfo",pageInfo);
		
		return "list";
	}*/

}
