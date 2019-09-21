<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" %> 
<%@ page import = "java.util.ResourceBundle" %>
<% ResourceBundle resource = ResourceBundle.getBundle("test");
  String test1=resource.getString("test1");
  String test2=resource.getString("test2"); %>

<!DOCTYPE HTML>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta http-equiv="Content-Security-Policy"
    content="default-src * data: gap: https://ssl.gstatic.com; style-src * 'unsafe-inline'; script-src * 'unsafe-inline' 'unsafe-eval'">
  <script src="components/loader.js"></script>
  <script src="lib/onsenui/js/onsenui.min.js"></script>

  <link rel="stylesheet" href="components/loader.css">
  <link rel="stylesheet" href="lib/onsenui/css/onsenui.css">
  <link rel="stylesheet" href="lib/onsenui/css/onsen-css-components.css">
  <link rel="stylesheet" href="css/style.css">
  <!-- sonradan : details.html-->
  <link rel="stylesheet" href="lib/onsenui/css/onsen-css-components-blue-basic-theme.css">
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
    ons.ready(function () {
      console.log("Onsen UI is ready!");
    });

    window.fn = {};

    window.fn.toggleMenu = function () {
      document.getElementById('appSplitter').right.toggle();
    };

    window.fn.loadView = function (index) {
      document.getElementById('appTabbar').setActiveTab(index);
      document.getElementById('sidemenu').close();
    };

    window.fn.loadLink = function (url) {
      window.open(url, '_blank');
    };

    window.fn.pushPage = function (page, anim) {
      if (anim) {
        document.getElementById('appNavigator').pushPage(page.id, { data: { title: page.title }, animation: anim });
      } else {
        document.getElementById('appNavigator').pushPage(page.id, { data: { title: page.title } });
      }
    };
  </script>
</head>

<body>
   <ons-navigator id="appNavigator" swipeable swipe-target-width="80px">
	<ons-page>
	<ons-splitter> <!--  -->
	<ons-splitter-side id="menu" page="person_cart.html" side="right" width="300px" collapse swipeable> </ons-splitter-side> 
	   <%-- 1. index.html, 2. person_cart.html , venue_person.html, venue_person_foods.html, venue_person_drinks.html, 
	   index.html , home_person_near.html , home_person_search.html , signup_person.html
	     --%>
	   <ons-splitter-content id="content" page="signup_person.html"></ons-splitter-content>
	 </ons-splitter> 
	</ons-page>
	</ons-navigator>

<%--
   <ons-template id="person_cart.html">
     <%@include file="content/person_cart.html"%> 
   </ons-template>
--%>


	<!-- +++ venue_person_foods.html +++ -->
	<ons-template id="venue_person_foods.html"> <ons-page
		modifier="shop-details"> <%@include
		file="content/venue_person_header.shtml"%> <%@include
		file="content/venue_person_foods.html"%> </ons-page> </ons-template>

</body>

</html>