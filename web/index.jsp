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
        padding:10px 20px 20px;
        border:1px black solid
      }
      h2{
        color: olivedrab;
      }
      .discount input{
        padding:5px; margin:5px
      }
      label{
        padding-right: 1em;
        float:left;
        width: 10em;
      }
      br{
        clear: left;
      }
      #data input{
        float: left;
        width: 15em;
        margin-bottom: 5em;
      }
      #button input{
        float: left;
      }
    </style>
  </head>
  <body>
  <form method="post" action="/display-discount" >
    <div class="discount">
      <h2>Product Discount Caculator</h2>
      <label>Product Description:</label>
      <input type="text" name="Product Description"/>
      <br>
      <label>List price:</label>
      <input type="text" name="List price"/>
      <br>
      <label>Discount Percent:</label>
      <input type="number" name="Discount Percent" min="0" max="100"/>
      <br>
      <div id = "button">
        <label> </label>
        <input type="submit" value="Calculate Discount"/>
      </div>
    </div>
  </form>
  </body>
</html>
