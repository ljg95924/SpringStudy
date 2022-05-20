<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%@include file="../includes/header.jsp" %>
     <form role="form" action="/board/register" method="post">
     	<div class="form-group">
     		<label>Title</label><input class="form-control" name="title">
     	</div>
     	<div class="form-group">
     		<label>Content</label>
     		<textarea class="form-control" rows="3" name="content"></textarea>
     	</div>
     	<div class="form-group">
     		<label>Writer</label>
     		<input class="form-control" name="writer">
     	</div>
     	<button type="submit" class="btn btn-default">Submit</button>
     	<button type="reset" class="btn btn-default">Reset</button>
     </form>
 <%@include file="../includes/footer.jsp" %>