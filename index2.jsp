<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Security-Policy"
	content="default-src * data: gap: https://ssl.gstatic.com; style-src * 'unsafe-inline'; script-src * 'unsafe-inline' 'unsafe-eval'">
<script src="components/loader.js"></script>
<script src="lib/onsenui/js/onsenui.min.js"></script>

<link rel="stylesheet" href="components/loader.css">
<link rel="stylesheet" href="lib/onsenui/css/onsenui.css">
<link rel="stylesheet" href="lib/onsenui/css/onsen-css-components.css">
<link rel="stylesheet" href="css/style.css">
<!-- sonradan : details.html-->
<link rel="stylesheet"
	href="lib/onsenui/css/onsen-css-components-blue-basic-theme.css">
<link rel="stylesheet" href="css/details.css">
<!-- profile.html -->
<link rel="stylesheet" href="css/profile.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/list_thumbnails.css">
<link rel="stylesheet" href="css/list_avatars.css">
<link rel="stylesheet" href="css/list_with_header.css">
<link rel="stylesheet" href="css/list_avatars.css">
<link rel="stylesheet" href="css/list_icons.css">
<link rel="stylesheet" href="css/signup.css">
<script>
	ons.ready(function() {
		console.log("Onsen UI is ready!");
	});

	window.fn = {};

	window.fn.toggleMenu = function() {
		document.getElementById('appSplitter').right.toggle();
	};

	window.fn.loadView = function(index) {
		//document.getElementById('appTabbar').setActiveTab(index);
		document.getElementById('sidemenu').close();
	};

	window.fn.loadLink = function(url) {
		window.open(url, '_blank');
	};

	window.fn.pushPage = function(page, anim) {
		if (anim) {
			document.getElementById('appNavigator').pushPage(page.id, {
				data : {
					title : page.title
				},
				animation : anim
			});
		} else {
			document.getElementById('appNavigator').pushPage(page.id, {
				data : {
					title : page.title
				}
			});
		}
	};
</script>
</head>

<body>

	<ons-navigator id="appNavigator" swipeable swipe-target-width="80px">
	<ons-page> <ons-splitter id="appSplitter"> <!--  -->
	<ons-splitter-side id="sidemenu" page="sidemenu.html" swipeableside="right" collapse="" width="260px"> </ons-splitter-side> 
	   <!-- <ons-splitter-content page="signup_person.html"></ons-splitter-content> -->
	   <ons-splitter-content page="home_person_near.html"></ons-splitter-content>
	   </ons-splitter> 
	</ons-page> 
	</ons-navigator>


<template id="sidemenu.html">
  <ons-page>
    <div class="profile-pic">
      <img src="https://monaca.io/img/logos/download_image_onsenui_01.png">
    </div>

    <ons-list-title>Access</ons-list-title>
    <ons-list>
      <ons-list-item onclick="fn.loadView(0)">
        <div class="left">
          <ons-icon fixed-width class="list-item__icon" icon="ion-home, material:md-home"></ons-icon>
        </div>
        <div class="center">
          Home
        </div>
        <div class="right">
          <ons-icon icon="fa-link"></ons-icon>
        </div>
      </ons-list-item>
      <ons-list-item onclick="fn.loadView(1)">
        <div class="left">
          <ons-icon fixed-width class="list-item__icon" icon="ion-edit, material:md-edit"></ons-icon>
        </div>
        <div class="center">
          Forms
        </div>
        <div class="right">
          <ons-icon icon="fa-link"></ons-icon>
        </div>
      </ons-list-item>
      <ons-list-item onclick="fn.loadView(2)">
        <div class="left">
          <ons-icon fixed-width class="list-item__icon" icon="ion-film-marker, material: md-movie-alt"></ons-icon>
        </div>
        <div class="center">
          Animations
        </div>
        <div class="right">
          <ons-icon icon="fa-link"></ons-icon>
        </div>
      </ons-list-item>
    </ons-list>

    <ons-list-title style="margin-top: 10px">Links</ons-list-title>
    <ons-list>
      <ons-list-item onclick="fn.loadLink('https://onsen.io/v2/docs/guide/js/')">
        <div class="left">
          <ons-icon fixed-width class="list-item__icon" icon="ion-document-text"></ons-icon>
        </div>
        <div class="center">
          Docs
        </div>
        <div class="right">
          <ons-icon icon="fa-external-link"></ons-icon>
        </div>
      </ons-list-item>
      <ons-list-item onclick="fn.loadLink('https://github.com/OnsenUI/OnsenUI')">
        <div class="left">
          <ons-icon fixed-width class="list-item__icon" icon="ion-social-github"></ons-icon>
        </div>
        <div class="center">
          GitHub
        </div>
        <div class="right">
          <ons-icon icon="fa-external-link"></ons-icon>
        </div>
      </ons-list-item>
      <ons-list-item onclick="fn.loadLink('https://community.onsen.io/')">
        <div class="left">
          <ons-icon fixed-width class="list-item__icon" icon="ion-chatboxes"></ons-icon>
        </div>
        <div class="center">
          Forum
        </div>
        <div class="right">
          <ons-icon icon="fa-external-link"></ons-icon>
        </div>
      </ons-list-item>
      <ons-list-item onclick="fn.loadLink('https://twitter.com/Onsen_UI')">
        <div class="left">
          <ons-icon fixed-width class="list-item__icon" icon="ion-social-twitter"></ons-icon>
        </div>
        <div class="center">
          Twitter
        </div>
        <div class="right">
          <ons-icon icon="fa-external-link"></ons-icon>
        </div>
      </ons-list-item>
    </ons-list>

    <script>
      ons.getScriptPage().onInit = function() {
        // Set ons-splitter-side animation
        this.parentElement.setAttribute('animation', ons.platform.isAndroid() ? 'overlay' : 'reveal');
      };
    </script>

    <style>
      .profile-pic {
        width: 200px;
        background-color: #fff;
        margin: 20px auto 10px;
        border: 1px solid #999;
        border-radius: 4px;
      }

      .profile-pic > img {
        display: block;
        max-width: 100%;
      }

      ons-list-item {
        color: #444;
      }
    </style>
  </ons-page>
</template>

	<!-- +++ venue_person.html +++ -->
	<ons-template id="venue_person.html"> <ons-page
		modifier="shop-details"> <%@include
		file="content/venue_person_header.shtml"%> <%@include
		file="content/venue_person_home.html"%> </ons-page> </ons-template>


	<!-- +++ venue_person_foods.html +++ -->
	<ons-template id="venue_person_foods.html"> <ons-page
		modifier="shop-details"> <%@include
		file="content/venue_person_header.shtml"%> <%@include
		file="content/venue_person_foods.html"%> </ons-page> </ons-template>


	<!-- +++ venue_person_drinks.html +++ -->
	<ons-template id="venue_person_drinks.html"> <ons-page
		modifier="shop-details"> <%@include
		file="content/venue_person_header.shtml"%> <%@include
		file="content/venue_person_drinks.html"%> </ons-page> </ons-template>


	<!-- +++ index.html +++ -->
	<ons-template id="index.html"> <ons-page> <%@include
		file="content/index.html"%> </ons-page> </ons-template>

	<!-- +++ home_person.html: near by +++ -->
	<ons-template id="home_person_near.html"> <ons-page>
	<ons-toolbar>
	<div class="center">Near by</div>
	</ons-toolbar> <%@include file="content/home_header.shtml"%>
	<%@include file="content/home_person_near.html"%>
	</ons-page> </ons-template>

	<!-- +++ home_person.html: favorites +++ -->
	<ons-template id="home_person_fav.html"> <ons-page>
	<ons-toolbar>
	<div class="center">Your favorites</div>
	</ons-toolbar> <%@include file="content/home_header.shtml"%>
	<%@include file="content/home_person_fav.html"%>
	</ons-page> </ons-template>

	<!-- +++ home_person.html: Recent +++ -->
	<ons-template id="home_person_recent.html"> <ons-page>
	<ons-toolbar>
	<div class="center">Recent locations</div>
	</ons-toolbar> <%@include file="content/home_header.shtml"%>
	<%@include file="content/home_person_recent.html"%>
	</ons-page> </ons-template>

	<!-- +++ home_person.html: Search +++ -->
	<ons-template id="home_person_search.html"> <ons-page>
	<ons-toolbar>
	<div class="center">Search</div>
	</ons-toolbar> <%@include file="content/home_header.shtml"%>
	<%@include file="content/home_person_search.html"%>

	</ons-page> </ons-template>

    <!-- +++ person_cart.html +++ -->
	<template id="person_cart.html"> <ons-page> <%@include
		file="content/person_cart.html"%> </ons-page> </template>

    <!-- +++ signup_person.html +++ -->
	<template id="signup_person.html"> <ons-page> <%@include
		file="content/signup_person.html"%> </ons-page> </template>

</body>

</html>