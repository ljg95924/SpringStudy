<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@include file="../includes/header.jsp" %>
     <form role="form" action="/board/modify" method="post">
     	<div class="form-group">
     		<label>Bno</label><input class="form-control" name="bno"
     		value='<c:out value="${board.bno}" />' readonly="readonly">
     	</div>
     	
     	<div class="form-group">
     		<label>Title</label><input class="form-control" name="title"
     		value='<c:out value="${board.title}" />' >
     	</div>
     	
     	<div class="form-group">
     		<label>Content</label><input class="form-control" name="content"
     		value='<c:out value="${board.content}" />' >
     	</div>
     	
     	<div class="form-group">
     		<label>Writer</label><input class="form-control" name="writer"
     		value='<c:out value="${board.writer}" />' >	
     	</div>
     	
     	<div class="form-group">
     		<label>RegDate</label><input class="form-control" name="regDate"
     		<%-- value = "${board.regDate}" readonly="readonly"> --%>
     		value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regDate}"/>' readonly="readonly">
     	</div>
     	
     	<div class="form-group">
     		<label>updateDate</label><input class="form-control" name="updateDate"
     		value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regDate}"/>' readonly="readonly">
     	</div>

     	<button type="submit" data-oper='modify' class = "btn btn-info">Modify</button>
     	<button type="submit" data-oper='remove' class = "btn btn-danger">Remove</button>
     	<button type="submit" data-oper='list' class = "btn btn-success">List</button>
     	
     </form>
     
     <script type="text/javascript">
     	$(document).ready(function(){
     		var formObj = $("form");
     		$('button').on("click", function(e){
     			e.preventDefault();
     			var operation = $(this).data("oper");
     	     	console.log(operation);
     	     	if(operation === 'remove'){
     	     		formObj.attr("action", "/board/remove");
     	     	}else if(operation ==='list'){
     	     		self.location = "/board/list";
     	     		return;
     	     	}
     			formObj.submit();
     		});
     	});
     </script>
     
     
 <%@include file="../includes/footer.jsp" %>