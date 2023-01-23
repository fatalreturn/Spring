<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><spring:message code="itemEdit.title"/></title>
</head>
<body>
	<form:form modelAttribute="item" action="update.html" method="post" enctype="multipart/form-data">
		<form:hidden path="itemId"/>
		<form:hidden path="pictureUrl"/>
		<div align="center" class="body">
			<h2><font color="red">
				<spring:message code="itemEdit.title"/>
			</font></h2>
			<table>
				<tr>
					<th height="40px">상품이름</th>
					<td>
						<form:input path="itemName" cssClass="itemName" maxlength="20"/>
					</td>
				</tr>
				<tr>
					<th height="40px">상품가격</th>
					<td>
						<form:input path="price" cssClass="price" maxlength="8"/>
					</td>
				</tr>
				<tr>
					<th height="40px">이미지 파일</th>
					<td>
						<input type="file" name="pictureUrl"/>
					</td>
				</tr>
				<tr>
					<th height="40px">상품설명</th>
					<td>
						<form:textarea path="info"/>
					</td>
				</tr>
			</table><br/>
			<input type="submit" value="변 경"/>
			<input type="reset" value="취 소"/>
		</div>
	</form:form>
	<a href="index.html">돌아가기</a>
</body>
</html>