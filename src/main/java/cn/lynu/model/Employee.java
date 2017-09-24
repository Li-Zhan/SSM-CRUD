package cn.lynu.model;

import javax.validation.constraints.Pattern;

public class Employee {
    private Integer empId;

    @Pattern(regexp="^([a-zA-Z0-9]{3,16})|(^[\u2E80-\u9FFF]{2,5})",message="用户名可以是2-5位中文或者3-16位英文和数字的组合")
    private String empName;

    private String empSex;

    @Pattern(regexp="(^[a-zA-Z0-9].+)@([\\w\\-]+)\\.([a-zA-Z0-9]{2,4})",message="邮箱格式不正确")
    private String empEmail;

    private Integer dId;
    
    //添加部门对象
    private Department department;
    

    public Employee() {
		super();
	}

	public Employee(Integer empId, String empName, String empSex, String empEmail, Integer dId) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empSex = empSex;
		this.empEmail = empEmail;
		this.dId = dId;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Integer getEmpId() {
        return empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName == null ? null : empName.trim();
    }

    public String getEmpSex() {
        return empSex;
    }

    public void setEmpSex(String empSex) {
        this.empSex = empSex == null ? null : empSex.trim();
    }

    public String getEmpEmail() {
        return empEmail;
    }

    public void setEmpEmail(String empEmail) {
        this.empEmail = empEmail == null ? null : empEmail.trim();
    }

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }
}