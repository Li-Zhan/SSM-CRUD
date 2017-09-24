package cn.lynu.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.github.pagehelper.PageInfo;

import cn.lynu.model.Employee;

/**
 * Spring4测试的时候，需要servlet3.0的支持
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations={"classpath:spring/applicationContext.xml","classpath:spring/springmvc.xml" })
public class PageTest {
	
/*	@Autowired
	WebApplicationContext context;
	
	// 虚拟mvc请求，获取到处理结果。
	MockMvc mockMvc;
	
	@Before
	public void init(){
		mockMvc=MockMvcBuilders.webAppContextSetup(context).build();
	}
	
	@Test
	public void pageTest() throws Exception{
		//模拟请求拿到返回值 param设置参数
		MvcResult result=mockMvc.perform(MockMvcRequestBuilders.get("/getAllEmps").param("pn", "3")).andReturn();
		
		MockHttpServletRequest request = result.getRequest();
		PageInfo pi = (PageInfo) request.getAttribute("pageInfo");
		
		System.out.println("当前页码："+pi.getPageNum());
		System.out.println("总页码："+pi.getPages());
		System.out.println("总记录数："+pi.getTotal());
		System.out.println("在页面需要连续显示的页码");
		int[] nums = pi.getNavigatepageNums();
		for (int i : nums) {
			System.out.print(" "+i);
		}
		
		System.out.println();
		
		//获取员工数据
		List<Employee> list = pi.getList();
		for (Employee employee : list) {
			System.out.println("ID："+employee.getEmpId()+"==>Name:"+employee.getEmpName());
		}
	}*/

}
