<%--
  Created by IntelliJ IDEA.
  User: mactr
  Date: 7/25/2018
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Caculate Discount</title>
    <style type ="text/css">
      .discount{
        height:250px; width:350px;
        margin:0;
        padding:10px;
        border:1px #CCC solid;
      }
      .discount input{
        padding:5px; margin:5px
      }
    </style>
  </head>
  <body>
  <form method="post" action="/display-discount" >
    <div class="discount">
      <h2>Discount</h2>
      <input type="text" name="Product Description" size="50" placeholder="Product Description"/>
      <input type="text" name="List price" size="50" placeholder="List price"/>
      <input type="number" name="Discount Percent" size="50" placeholder="Discount Percent" min="0" max="100" step="10"/>
      <input type="submit" value="Calculate Discount"/>
    </div>
  </form>
  </body>
</html>
