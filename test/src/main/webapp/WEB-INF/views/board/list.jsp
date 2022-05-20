<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@include file="../includes/header.jsp" %>
	
	<div class="row">
	    <div class="col-lg-12">
	        <h1 class="page-header">List Page</h1>
	    </div>
	    <!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
	    <div class="col-lg-12">
	        <div class="panel panel-default">
	            <div class="panel-heading">
	                게시글 목록
	                <button id='regBtn' type="button" class="btn btn-xs pull-right">글쓰기</button>
	            </div>
	            <!-- /.panel-heading -->
	            <div class="panel-body">
	                <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
	                    <thead>
	                        <tr>
	                        	<th>#번호</th>
	                        	<th>제목</th>
	                        	<th>작성자</th>
	                        	<th>작성일</th>
	                        	<th>수정일</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                   <c:forEach var="item" items="${list}">
	                        <tr class="odd gradeX">
	                            <td>${item.bno}</td>
	                            <td><a href="/board/get?bno=${item.bno}">
	                            ${item.title}
	                            </a></td>
	                            <td>${item.content}</td>
	                            <td class="center">${item.writer}</td>
	                            <td class="center">${item.updateDate}</td>
	                        </tr>
	                   </c:forEach>
	                       
	                    </tbody>
	                </table>
	                <!-- /.table-responsive -->
	              
	                </div>
	                <!-- /.table-responsive -->
	                
	                
						                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModallabel" aria-hidden="true">
					   <div class="modal-dialog">
					       <div class="modal-content">
					           <div class="modal-header">
					                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
					           </div>
					           <div class="modal-body">처리가 완료되었습니다.</div>
					           <div class="modal-footer">
					                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					                <button type="button" class="btn btn-default" >Save Changes</button>
					           </div>
					      </div>
					   </div>
					</div> <!-- /.modal fade -->
	                
	            </div>
	            <!-- /.panel-body -->
	        </div>
	        <!-- /.panel -->
	    </div>
	    <!-- /.col-lg-6 -->
	</div>
	<!-- /.row -->
	<script type="text/javascript">
		$(document).ready(function(){
			var result= '<c:out value="${result}"/>';
			checkModal(result);
			function checkModal(result){
				if(result === ''){
					return;
				}
				if(parseInt(result) > 0){
					$(".modal-body").html(
							"게시글" + parseInt(result)+"번이 등록되었습니다.");
				}
				$("#myModal").modal("show");
			}
		});
		
		$("#regBtn").on("click", function(){
			self.location = "/board/register";
		});
	</script>
 <%@include file="../includes/footer.jsp" %>       