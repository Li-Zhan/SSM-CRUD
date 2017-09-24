<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>列表页</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<!-- 修改员工的模态框 -->
<div class="modal fade" id="update_emp_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">更新员工</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label for="input_name" class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-10">
		      <p class="form-control-static"></p>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="input_email" class="col-sm-2 control-label">邮箱</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="empEmail" id="update_email" placeholder="请输入邮箱">
		      <span></span><label class="help-block"></label>
		    </div>
		  </div>
		  <div class="form-group">
		  <label class="col-sm-2 control-label">性别</label>
		   <div class="col-sm-10">
			   <label class="radio-inline">
				  <input type="radio" name="empSex" value="1" checked>男
				</label>
				<label class="radio-inline">
				  <input type="radio" name="empSex" value="0">女
				</label>
		   </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">部门</label>
		    <div class="col-sm-6">
		    <select class="form-control" name="dId"></select>
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="update_emp">修改</button>
      </div>
    </div>
  </div>
</div>

<!-- 新增员工的模态框 -->
<div class="modal fade" id="add_emp_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">新增员工</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label for="input_name" class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="empName" id="input_name" placeholder="请输入姓名">
		      <span></span><label class="help-block"></label>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="input_email" class="col-sm-2 control-label">邮箱</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="empEmail" id="input_email" placeholder="请输入邮箱">
		      <span></span><label class="help-block"></label>
		    </div>
		  </div>
		  <div class="form-group">
		  <label class="col-sm-2 control-label">性别</label>
		   <div class="col-sm-10">
			   <label class="radio-inline">
				  <input type="radio" name="empSex" value="1" checked>男
				</label>
				<label class="radio-inline">
				  <input type="radio" name="empSex" value="0">女
				</label>
		   </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">部门</label>
		    <div class="col-sm-6">
		    <select class="form-control" name="dId"></select>
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="save_emp">保存</button>
      </div>
    </div>
  </div>
</div>

		<div class="container">
			<!--标题-->
			<div class="row">
				<div class="col-md-12">
					<h1>SSM-CRUD</h1>
				</div>
			</div>
			<!--按钮-->
			<div class="row">
				<div class="col-md-4 col-md-offset-8">
					<button class="btn  btn-primary" id="add_emp_btn">新增</button>
					<button class="btn btn-danger" id="delete_all_btn">批量删除</button>
				</div>
			</div>
			<!--表格-->
			<div class="row">
				<table class="table table-striped table-hover" id="emps_table">
					<thead>
						<tr>
						    <th><input type="checkbox" id="check_all"/></th>
							<th>ID</th>
							<th>姓名</th>
							<th>邮箱</th>
							<th>性别</th>
							<th>部门</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
			<!--分页-->
			<div class="row">
				<!--分页信息-->
				<div class="col-md-4" id="page_info"></div>
				<!--分页条-->
				<div class="col-md-6" id="page_nav">
				</div>
			</div>
		</div>

<script src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
   $(function() {
	   
	   //记录中记录数,用于转跳到最后一页
	   var totalSize;
	   
	   var currPage;
	   
	   //默认第一页
	   to_page(1);
	   
	   function to_page(pn){
		   $.ajax({
			   url:'${pageContext.request.contextPath }/getAllEmps.action',
			   type:'GET',
			   data:'pn='+pn,
			   success:function(result){
				   //解析得到列表数据
				   build_list(result);
				   //解析得到分页信息
				   build_page_info(result);
				   //解析得到分页条
				   buld_page_nav(result);
			   }
		   });
	   }
	   
	   function build_list(result){
		   //清除之前数据
		   $('#emps_table tbody').empty();
		   var emps=result.extend.pageInfo.list;
		   $.each(emps,function(index,value){
			   var checkTd=$('<td><input type="checkbox" class="check_item"/></td>');
			   var idTd=$('<td></td>').append(value.empId);
			   var nameTd=$('<td></td>').append(value.empName);
			   var sexTd=$('<td></td>').append(value.empSex==1?'男':'女');
			   var emailTd=$('<td></td>').append(value.empEmail);
			   var deptNameTd=$('<td></td>').append(value.department.deptName);
			   var editBtn=$('<button></button>').addClass('btn btn-info btn-sm edit-btn').append($('<span></span>').addClass('glyphicon glyphicon-pencil')).append(' 编辑');
			   //给编辑按钮添加id属性
			   editBtn.attr('edit-id',value.empId);
			   var delBtn=$('<button></button>').addClass('btn btn-danger btn-sm delete-btn').append($('<span></span>').addClass('glyphicon glyphicon-trash')).append(' 删除');
			   //给删除按钮添加id属性
			   delBtn.attr('delete-id',value.empId);
			   var btn=$('<td></td>').append(editBtn).append(' ').append(delBtn);
			   $('<tr></tr>')
			       .append(checkTd)  
			       .append(idTd)
				   .append(nameTd)
				   .append(emailTd)
				   .append(sexTd)
				   .append(deptNameTd)
				   .append(btn)
				   .appendTo('#emps_table tbody');
		   });
	   }
	   
	   function build_page_info(result){
		 //清除之前数据
		   $('#page_info').empty();
		   $('#page_info').append('当前第 '+result.extend.pageInfo.pageNum+'页,共有'+result.extend.pageInfo.pages+'页,总计'+result.extend.pageInfo.total+'条记录');
		   totalSize=result.extend.pageInfo.total;
		   currPage=result.extend.pageInfo.pageNum;
	   }
	   
	   function buld_page_nav(result){
		 //清除之前数据
		   $('#page_nav').empty();
		   var pageUl=$('<ul></ul>').addClass('pagination');
		   var firstLi=$('<li></li>').append($('<a></a>').attr('href','#').append('首页'));
		   var preLi=$('<li></li>').append($('<a></a>').attr('href','#').append('&laquo;'));
		   
		   //第一页就不允许点击
		   if(result.extend.pageInfo.isFirstPage){
			   firstLi.addClass('disabled');
			   preLi.addClass('disabled');
		   }else{
			   firstLi.click(function(){
				   to_page(1); 
			   });
			   preLi.click(function(){
				   to_page(result.extend.pageInfo.pageNum-1);
			   });
			   
		   }
		   
		   pageUl.append(firstLi).append(preLi);
		   
		   $.each(result.extend.pageInfo.navigatepageNums,function(index,value){
			   var num=$('<li></li>').append($('<a></a>').attr('href','#').append(value));
			   if(result.extend.pageInfo.pageNum==value){
				   num.addClass('active');
			   }
			   pageUl.append(num);
			   num.click(function(){
				   to_page(value);
			   });
		   });
		   
		   var nextLi=$('<li></li>').append($('<a></a>').attr('href','#').append('&raquo;'));
		   var lastLi=$('<li></li>').append($('<a></a>').attr('href','#').append('末页'));
		   
		   //最后一页就不许点击
		   if(result.extend.pageInfo.isLastPage){
			   nextLi.addClass('disabled');
			   lastLi.addClass('disabled');
		   }else{
			   nextLi.click(function(){
				   to_page(result.extend.pageInfo.pageNum+1);
			   });
			   lastLi.click(function(){
				   to_page(result.extend.pageInfo.pages);
			   });
		   }
		   
		   pageUl.append(nextLi).append(lastLi);
		   
		   $('#page_nav').append(pageUl);
	   }
	   
	   //清空表单内容和样式
	   function reset_form(ele){
		   $(ele)[0].reset();
		   $(ele).find('*').removeClass('has-success has-error');
		   $(ele).find('*').removeClass('glyphicon glyphicon-ok glyphicon-remove form-control-feedback');
		   $(ele).find('.help-block').text('');
	   }
	   
	   //点击新增按钮
	   $('#add_emp_btn').click(function(){
		   
		   //打开模态框之前进行表单重置
		   //$('#add_emp_modal form')[0].reset();
		   reset_form('#add_emp_modal form');
		   
		   //先发AJax得到部门信息
		   getDepts('#add_emp_modal select');
		   
		   //打开模态框
		   $('#add_emp_modal').modal({
			   backdrop:'static',
		   });
	   });
	   
	   //发送的到所有部门信息的(下拉列表)
	   function getDepts(ele){
		   //清空之前下拉列表的值
		   $(ele).empty();
		   $.ajax({
			   url:'${pageContext.request.contextPath }/getAllDept.action',
			   type:'GET',
			   success:function(result){
				  $.each(result.extend.depts,function(index,value){
					  $('<option></option>').append(value.deptName).attr('value',value.deptId).appendTo(ele);
				  });
			   }
		   });
	   }
	   
	   //验证表单的用户名和邮箱格式
	   function validate_form(){
		   var empName=$('#input_name').val();
		   var reg=/(^[a-zA-Z0-9]{3,16})|(^[\u2E80-\u9FFF]{2,5})/;
		   
		   //保存按钮的状态
 		   if($('#save_emp').attr('ajax-va')=='error'){
				return false;
		   } 
		   
		   if(!reg.test(empName)){
			   show_validate_msg("#input_name", "error", "用户名可以是2-5位中文或者3-16位英文和数字的组合");
			   return false;
		   }else{
			   show_validate_msg("#input_name", "success", "");
		   }
		   
		   var empEmail=$('#input_email').val();
		   var reg2=/^(^[a-zA-Z0-9].+)@([\w\-]+)\.([a-zA-Z0-9]{2,4})$/;
		   if(!reg2.test(empEmail)){
			   show_validate_msg("#input_email", "error", "邮箱格式不正确");
			   return false;
		   }else{
			   show_validate_msg("#input_email", "success", "");
		   }
		   return true;
	   }
	   
	   //效验信息
	   function show_validate_msg(ele,status,msg){
		 //清除当前元素的效验状态
 			$(ele).parent().removeClass('has-success has-error has-feedback');
			$(ele).next('span').removeClass('glyphicon glyphicon-ok glyphicon-remove form-control-feedback');
			$(ele).nextAll('label').text('');
			
		   if('success'==status){
			   $(ele).parent().addClass('has-success has-feedback');
			   $(ele).next('span').addClass('glyphicon glyphicon-ok form-control-feedback');
			   $(ele).nextAll('label').text(msg);
		   }else if('error'==status){
			   $(ele).parent().addClass('has-error has-feedback');
			   $(ele).next('span').addClass('glyphicon glyphicon-remove form-control-feedback');
			   $(ele).nextAll('label').text(msg);
		   }
	   }
	   
	   //效验姓名是否存在
	   //发送ajax请求校验用户名是否可用

 		$('#input_name').blur(function(){
			var empName = $('#input_name').val();
			   $.ajax({
				  url:'${pageContext.request.contextPath }/hasEmpName.action',
				  type:'POST',
				  data:'empName='+empName,
				  success:function(result){
					  if(result.code==200){
						  show_validate_msg("#input_name","success","用户名可用");
							$("#save_emp").attr("ajax-va","success");
						}else{
							show_validate_msg("#input_name","error",result.extend.va_msg);
							$("#save_emp").attr("ajax-va","error");
						}
				  }
			   });
		   }); 
	   
	   //点击保存发送Ajax
	   $('#save_emp').click(function(){
		  
		   
		//发送数据之前先校验
	 	  if(!validate_form()){
			  return false;
		  } 
		   
		   
		   //判断之前的ajax用户名校验是否成功。如果成功
			 if($(this).attr('ajax-va')=='error'){
				 return false;
			 }
		  
		   
     	$.ajax({
			   url:'${pageContext.request.contextPath }/saveEmpl.action',
			   type:'POST',
			   data:$('#add_emp_modal form').serialize(),
			   success:function(result){
				   if(result.code==200){
					   //保存成功之后
					   //1.关闭模态框
					   $('#add_emp_modal').modal('hide');
					   //2.调到最后一页(给一个足够大的页码数,分页参数合理化所以显示最后一页)
					   to_page(totalSize);
				   }else{
					   //后端验证提示失败后
					   if(undefined!=result.extend.errorField.empEmail){
						   show_validate_msg("#input_email", "error", result.extend.errorField.empEmail);
					   }
					   if(undefined!=result.extend.errorField.empName){
						   show_validate_msg("#input_name","error",result.extend.errorField.empName);
					   }
				   }
			   }
		   }); 
	   });
	   
	   //给修改按钮绑定事件(给后添加的按钮,即动态生成的按钮绑定事件使用on)
	   $(document).on('click','.edit-btn',function(){
		  //查询部门信息
		  getDepts('#update_emp_modal select');
		  //查询员工信息
		  getEmp($(this).attr('edit-id'));
		   //打开模态框
		   $('#update_emp_modal').modal({
			   backdrop:'static',
		   });
		   //将员工id传给修改按钮
		   $('#update_emp').attr('edit-id',$(this).attr('edit-id'));
	   });
	   
	  //得到员工信息
     function getEmp(id){
		   $.ajax({
			   url:'${pageContext.request.contextPath}/emp/'+id,
			   type:'GET',
			   success:function(result){
				  $('#update_emp_modal .form-control-static').text(result.extend.emp.empName);
				  $('#update_email').val(result.extend.emp.empEmail);
				  $('#update_emp_modal input[name=empSex]').val([result.extend.emp.empSex]);
				  $('#update_emp_modal select').val([result.extend.emp.dId]);
			   }
		   });
	   } 
	  
	  //修改员工信息
	  $('#update_emp').click(function(){
		  //先验证邮箱格式
		   var empEmail=$('#update_email').val();
		   var reg2=/^(^[a-zA-Z0-9].+)@([\w\-]+)\.([a-zA-Z0-9]{2,4})$/;
		   if(!reg2.test(empEmail)){
			   show_validate_msg("#update_email", "error", "邮箱格式不正确");
			   return false;
		   }else{
			   show_validate_msg("#update_email", "success", "");
		   }
		   
		   
		   //验证通过后发AJax
		   $.ajax({
			   url:'${pageContext.request.contextPath}/emp/'+$(this).attr("edit-id"),
			   type:'PUT',
			   data:$('#update_emp_modal form').serialize(),
			   success:function(result){
				  //1.更新成功之后关闭模态框
				  $('#update_emp_modal').modal('hide');
			     //2.回到当前页
				 to_page(currPage);
			   }
		   });
		   
	  });
	  
	  
	  //单个删除员工
	  $(document).on('click','.delete-btn',function(){
		  //员工姓名
		  var empName=$(this).parents('tr').find('td').eq(2).text();
		  if(confirm('确定要删除【'+empName+'】吗?')){
			  $.ajax({
				  url:'${pageContext.request.contextPath}/emp/'+$(this).attr('delete-id'),
				  type:'DELETE',
				  success:function(result){
					  alert(result.msg);
					  //回到当前页
					  to_page(currPage);
				  }
			  });
		  }
	  });
	  
	  
	  //全选和全不选
	  $('#check_all').click(function(){
		  $('.check_item').prop('checked',$('#check_all').prop('checked'));
	  });
	  
	  //每个check_item都选中之后,全选按钮也要选中
	  $(document).on('click','.check_item',function(){
		  var checkFlag=$('.check_item:checked').length==$('.check_item').length;
		  $('#check_all').prop('checked',checkFlag);
	  });
	  
	  //批量删除
	  $('#delete_all_btn').click(function(){
		 var empName='';
		 var empIds='';
		 $.each($('.check_item:checked'),function(){
			 empName+=$(this).parents('tr').find('td:eq(2)').text()+',';
			 empIds+= $(this).parents('tr').find('td:eq(1)').text()+'-';
		 });
		 
		 //去除姓名集合的最后一个,
		 empName=empName.substring(0,empName.length-1);
		 //取出要删除id最后一个-
		 empIds=empIds.substring(0,empIds.length-1);
		if(confirm('确定要删除【'+empName+'】吗?')){
			$.ajax({
				url:'${pageContext.request.contextPath}/emp/'+empIds,
				type:'DELETE',
				success:function(result){
					alert(result.msg);
					//回到当前页
					to_page(currPage);
				}
			});
		}
	  });
	   
});
</script>
</body>
</html>