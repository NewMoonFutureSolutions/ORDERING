<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<% ResourceBundle resource = ResourceBundle.getBundle("english");
  String test1=resource.getString("test1");
  String search=resource.getString("search");
 %>
<!DOCTYPE HTML>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Security-Policy"
	content="default-src * data: gap: https://ssl.gstatic.com; style-src * 'unsafe-inline'; script-src * 'unsafe-inline' 'unsafe-eval'">

<script src="cordova.js"></script>

<script src="components/loader.js"></script>
<script src="lib/onsenui/js/onsenui.min.js"></script>
<script src="lib/nmfs/nmfs.js"></script>

<link rel="stylesheet" href="components/loader.css">
<link rel="stylesheet" href="lib/onsenui/css/onsenui.css">
<link rel="stylesheet" href="lib/onsenui/css/onsen-css-components.css">
<link rel="stylesheet" href="css/style.css">
<!-- sonradan : details.html-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css"> 
<link rel="stylesheet" href="css/material-design-color-palette.min.css">
<link rel="stylesheet"
	href="lib/onsenui/css/onsen-css-components-blue-basic-theme.css">
<link rel="stylesheet" href="css/details.css">
<!-- profile.html -->
<link rel="stylesheet" href="css/profile.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/list_thumbnails.css">
<link rel="stylesheet" href="css/list_avatars.css">
<!--  
<link rel="stylesheet" href="css/list_with_header.css">
-->
<link rel="stylesheet" href="css/list_avatars.css">
<link rel="stylesheet" href="css/list_icons.css">
<link rel="stylesheet" href="css/signup.css">
<script>
	ons.ready(function() {
		console.log("Onsen UI is ready!");
	});

	
	 window.fn = {};

	window.fn.open = function() {
	      var menu = document.getElementById('menu');
	      menu.open();
	    };

    window.fn.load = function(page) {
    	  var content = document.getElementById('content');
	      var menu = document.getElementById('menu');
	      content.load(page)
	        .then(menu.close.bind(menu));
	    };
	
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
<script>
    window.fn.changeCount = function (op) {

      var productcount = document.getElementById('productcount').value;
      if (isNaN(productcount)) { productcount = 0; }
      if (op == '+') {
        productcount++;
        if (productcount < 30) { document.getElementById('productcount').value = productcount; }
        else { alert('max 30 orders') }
      }
      if (op == '-') {
        productcount--;
        if (productcount >= 0) { document.getElementById('productcount').value = productcount; }

      }
    }
    
    // navigator
    document.addEventListener('init', function(event) {
        var page = event.target;
       /*  if (page.id === 'page1') { 
       	 page.querySelector('#testID1').onclick = function() {
            document.querySelector('#myNavigator').pushPage('page2.html', {data: {title: 'Page 2'}});
         }; */
         /* page.querySelector('#testID2').onclick = function() {
         document.querySelector('#myNavigator').pushPage('page3.html', {data: {title: 'Page 3'}});
         }; */
         if (page.id === 'venue_person_foods') { 
       	  createHtml1();
         }
         
     },false);

    function getFoodDetails() {
        var myNavigator = document.getElementById('appNavigator');
        myNavigator.pushPage('food_details.html');
      }
  </script>

 
</head>

<body>

	
  <ons-navigator id="appNavigator">
    <ons-page>
      <ons-splitter>
        <ons-splitter-side id="menu" page="person_cart.html" side="right" width="300px" collapse swipeable>
        </ons-splitter-side>
        <ons-splitter-content id="content" page="index.html"></ons-splitter-content>
      </ons-splitter>
    </ons-page>
  </ons-navigator>

<ons-template id="person_cart.html">
  <%@include file="content/person_cart.html"%> 
</ons-template>

	<!-- +++ venue_person.html +++ -->
	<ons-template id="venue_person.html">
	 	<ons-page modifier="shop-details"> 
	 		<%@include file="content/venue_person_header.shtml"%> 
	 		<%@include file="content/venue_person_home.html"%> 
	 	</ons-page> 
	 </ons-template>


	<!-- +++ venue_person_foods.html +++ -->
	<ons-template id="venue_person_foods.html"> 
		<ons-page id="venue_person_foods"modifier="shop-details"> 
		<%@include file="content/venue_person_header.shtml"%> 
		<%@include file="content/venue_person_foods.html"%> 
		</ons-page> 
	</ons-template>

	<!-- +++ venue_person_drinks.html +++ -->
	<ons-template id="venue_person_drinks.html"> 
		<ons-page modifier="shop-details"> 
			<%@include file="content/venue_person_header.shtml"%> 
			<%@include file="content/venue_person_drinks.html"%> 
		</ons-page> 
	</ons-template>


	<!-- +++ index.html :Login +++ -->
	<ons-template id="index.html"> 
		<%@include file="content/index.html"%> 
	</ons-template>

	<!-- +++ home_person.html: near by +++ -->
	<ons-template id="home_person_near.html"> 
		<ons-page>
			<ons-toolbar><div class="center">Near by</div></ons-toolbar> 
			<%@include file="content/home_header.shtml"%>
			<%@include file="content/home_person_near.html"%>
		</ons-page> 
	</ons-template>

	<!-- +++ homec_person.html: favorites +++ -->
	<ons-template id="home_person_fav.html"> 
		<ons-page>
			<ons-toolbar><div class="center">Your favorites</div></ons-toolbar> 
			<%@include file="content/home_header.shtml"%>
			<%@include file="content/home_person_fav.html"%>
		</ons-page> 
	</ons-template>

	<!-- +++ home_person.html: Recent +++ -->
	<ons-template id="home_person_recent.html"> 
		<ons-page>
			<ons-toolbar><div class="center">Recent locations</div></ons-toolbar> 
			<%@include file="content/home_header.shtml"%>
			<%@include file="content/home_person_recent.html"%>
		</ons-page> 
	</ons-template>

	<!-- +++ home_person.html: Search +++ -->
	<ons-template id="home_person_search.html"> 
		<ons-page>
			<ons-toolbar><div class="center">Search</div></ons-toolbar> 
			<%@include file="content/home_header.shtml"%>
			<%@include file="content/home_person_search.html"%>
		</ons-page> 
	</ons-template>

    <!-- +++ signup_person.html +++ -->
	<template id="signup_person.html"> 
		<%@include file="content/signup_person.html"%> 
	</template>

    <!-- +++ food_details.html +++ -->
	<template id="food_details.html"> 
		<%@include file="content/food_details.html"%> 
	</template>

<!-- TOAST messages -->
<%@include file="content/toasts.html"%> 

</body>


</html>