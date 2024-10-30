<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Music List</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" >
	<link rel="stylesheet" href="style.css">
</head>
<body>
    <% List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
    String idString = request.getParameter("id");
    int id = 0;
    if(idString != null) {
    	id = Integer.parseInt(idString);
    }
    
    String title = request.getParameter("title");
    
%>
	
	<div id="wrap">
	<header class="d-flex">
	<div class="logo d-flex align-items-center">
		<h1 class="text-success">Melon</h1>
	</div>
	<div class="search d-flex align-items-center">
		<div class="input-group col-6" >
  		<input type="text" class="form-control">
  		<div class="input-group-append">
  		<button class="btn btn-success" type="button">Search</button>
  		</div>
	</div>
	</div>
	</header>
	<nav class="main-menu">
		<ul class="nav font-weight-bold">
			<li class="nav-item"><a class="nav-link text-dark" href="#">Melon Chart</a></li>
			<li class="nav-item"><a class="nav-link text-dark" href="#">Current Music</a></li>
			<li class="nav-item"><a class="nav-link text-dark" href="#">Genre</a></li>
			<li class="nav-item"><a class="nav-link text-dark" href="#">MelonDJ</a></li>
			<li class="nav-item"><a class="nav-link text-dark" href="#">Music Award</a></li>
		</ul>
	</nav>
	<section class="main-contents">
	<h3 class="mt-3">Information</h3>
	<% for (Map<String, Object> music:musicList) {
		int time = (Integer) music.get("time");
		
		if(title != null && title.equals(music.get("title"))
				|| (id != 0 && id == (Integer)music.get("id"))) {
			
		
		%>
		<div class="music d-flex border border-success p-3">
			<div>	
				<img width="200" src="<%= music.get("thumbnail") %>">
			</div>
			<div class="ml-4">
				<div class="display-4"><%= music.get("title") %></div>
				<div class="text-success font-weight-bold"><%= music.get("singer") %></div>
				<div class="small">
					<div>Album : <%= music.get("album") %></div>
					<div>Play time : <%= time / 60 %> : <%= time % 60 %></div>
					<div>Songwriter : <%= music.get("composer") %></div>
					<div>Lyricist : <%= music.get("lyricist") %></div>
				</div>
			</div>
		</div>
		<% } 
		}	%>
		<div class="lyrics mt-4">
			<h3>lyrics</h3>
			<hr>
			<div>Nothing</div>
		</div>
		<div class="song-list mt-4">
		</div>
	</section>
	<footer>
	<hr>
		<div class="text-secondary">Copyright 2021. melong All Rights Reserved.</div>
	</footer>
	</div>
	
	
		<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
</body>
</html>