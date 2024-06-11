<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, com.javalab.vo.*" %>


    <%
    	// 영화 목록 추출하기
    	List<Album> albumList = (List<Album>)request.getAttribute("albumList");
		// 문화 컨텐트 타입 추출하기
		String infoType = (String)request.getAttribute("infoType");
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>albumList.jsp</title>
</head>
<body>
	<h3>앨범목록</h3>
	<table border="1";>
		<tr>
			<th>제목</th>
			<th>작곡가</th>
			<th>발매년도</th>
		</tr>
		<%
			for (Album album : albumList) {
				String queryString = "title=" + URLEncoder.encode(album.getTitle(), "utf-8") +
						"&artist=" + URLEncoder.encode(album.getArtist(), "utf-8") +
						"&releaseYear=" + album.getReleaseYear();
		%>
			<tr>
				<td><a href="albumDetail.jsp? <%= queryString %>"><%= album.getTitle() %></a></td>
				<td><%= album.getArtist() %></td>
				<td><%= album.getReleaseYear() %></td>
			</tr>
		<%
			} // end for
		%>
	</table>
	
	<button onclick="location.href='selectInfo.jsp?infoType=<%=infoType %>'">컨텐츠 선택</button>
</body>
</html>