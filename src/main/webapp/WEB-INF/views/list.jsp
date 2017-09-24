<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<button class="btn  btn-primary">新增</button>
					<button class="btn btn-danger">删除</button>
				</div>
			</div>
			<!--表格-->
			<div class="row">
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>ID</th>
							<th>姓名</th>
							<th>邮箱</th>
							<th>性别</th>
							<th>部门</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					
					    <c:forEach items="${pageInfo.list }" var="page">
						    <tr>
								<td>${page.empId }</td>
								<td>${page.empName }</td>
								<td>${page.empEmail }</td>
								<td>${page.empSex==1?'男':'女' }</td>
								<td>${page.department.deptName }</td>
								<td>
									<button class="btn btn-info btn-sm">
										<span class="glyphicon glyphicon-pencil"></span> 编辑
									</button>
									<button class="btn btn-danger btn-sm">
										<span class="glyphicon glyphicon-trash"></span> 删除
									</button>
								</td>
							</tr>
					    </c:forEach>
						
					</tbody>
				</table>
			</div>
			<!--分页-->
			<div class="row">
				<!--分页信息-->
				<div class="col-md-4">
					当前第 ${pageInfo.pageNum } 页,共有${pageInfo.pages }页,总计${pageInfo.total }条记录
				</div>
				<!--分页条-->
				<div class="col-md-6">
					<nav aria-label="Page navigation">
					  <ul class="pagination">
					    <!-- 如果不是第一页,则显示首页 -->
					    <c:if test="${!pageInfo.isFirstPage }">
						  	<li><a href="${pageContext.request.contextPath }/getAllEmps.action?pn=1">首页</a></li>
					    </c:if>
					    <!-- 如果有上一页,才显示上一页 -->
					    <c:if test="${pageInfo.hasPreviousPage }">
						    <li>
						      <a href="${pageContext.request.contextPath }/getAllEmps.action?pn=${pageInfo.pageNum-1 }" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
					    </c:if>
					    <!--如果选中的是当前页,添加选中状态 -->
					    <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
					       <c:if test="${pageInfo.pageNum==page_num }">
					           <li class="active"><a href="${pageContext.request.contextPath }/getAllEmps.action?pn=${page_num }">${page_num }</a></li>
					       </c:if>
					       <c:if test="${pageInfo.pageNum!=page_num }">
					         <li><a href="${pageContext.request.contextPath }/getAllEmps.action?pn=${page_num }">${page_num }</a></li>
					       </c:if>
					    </c:forEach>
					    <!-- 如果有下一页,显示下一页 -->
					    <c:if test="${pageInfo.hasNextPage }">
						    <li>
						      <a href="${pageContext.request.contextPath }/getAllEmps.action?pn=${pageInfo.pageNum+1 }" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
					    </c:if>
					    <!-- 如果不是最后一页,显示最后一页 -->
					    <c:if test="${!pageInfo.isLastPage }">
						    <li><a href="${pageContext.request.contextPath }/getAllEmps.action?pn=${pageInfo.pages }">尾页</a></li>
					    </c:if>
					  </ul>
					</nav>
				</div>
			</div>
		</div>

<script src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/static/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>