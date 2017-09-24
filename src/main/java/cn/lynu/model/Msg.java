package cn.lynu.model;

import java.util.HashMap;
import java.util.Map;

/**
 * 通用的返回类
 * @author LZ
 *
 */
public class Msg {
	
	//响应状态码(可以自定义 100失败 200成功)
	private int Code;
	
	//响应信息
	private String msg;
	
	//用户要返回给浏览器的数据
	private Map<String, Object> extend = new HashMap<String, Object>();

	//响应成功的方法
	public static Msg success(){
		Msg msg=new Msg();
		msg.setCode(200);
		msg.setMsg("成功");
		return msg;
	}
	
	//响应失败的方法
	public static Msg fail(){
		Msg msg=new Msg();
		msg.setCode(100);
		msg.setMsg("失败");
		return msg;
	}
	
	//处理返回数据(单独作为一个方法,因为返回结果不一定有数据)
	public Msg add(String key,Object value){
		this.getExtend().put(key, value);
		return this;
	}
	
	public int getCode() {
		return Code;
	}

	public void setCode(int code) {
		Code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Map<String, Object> getExtend() {
		return extend;
	}

	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}
		
		

}
