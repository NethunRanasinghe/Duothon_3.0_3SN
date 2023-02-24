<%--
  Created by IntelliJ IDEA.
  User: sanid
  Date: 24/02/2023
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="css/table.css">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
  <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
  <style type="text/tailwindcss">


    @layer utilities {
      .content-auto {
        content-visibility: auto;
      }
    }
  </style>
  <title>Blue Health Care</title>
</head>


<!--Nav bar-->
<body class="bg-gray-700">
<!--Nav Bar-->
<nav class="p-5 bg-black shadow md:flex md:items-center md:justify-between">
  <div class="flex justify-between item-center">
            <span class="cursor-pointer">
                <a href="index.jsp">
                    <img class="h-10 inline px-10" src="images/logo.png" alt="">
                </a>
            </span>
    <span class="text-3xl cursor-pointer mx-2 md:hidden block">
                <ion-icon name="grid" onclick="Menu(this)"></ion-icon>
            </span>

  </div>
  <ul class="md:flex md:items-center z-[-1] md:z-auto md:static absolute bg-black w-full left-0 md:w-auto md:py-0 py-6 md:pl-0 pl-7
            md:opacity-100 opacity-100 top-[-400px] transition-all ease-in duration-500">
    <li class="mx-5 my-5 md:my-0">
      <a href="/index.jsp"
         class="text-xl text-white font-sans md:font-sans hover:text-[#DAA520] duration-500 ">SEARCH</a>
    </li>
    <li class="mx-5 my-5 md:my-0">
      <a href="/movies.jsp"
         class="text-xl text-white font-sans md:font-sans hover:text-[#DAA520] duration-500">SHOW ALL PARMACHIES</a>
    </li>

  </ul>

</nav>
</div>



<h2></h2>
<div class="table-wrapper">
  <table class="fl-table">
    <thead>
    <tr>
      <th>ID</th>
      <th>Pharmacy Name</th>
      <th>Pharmacy Email</th>
      <th>Owner Name</th>
      <th>Verification Status</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td>1</td>
      <td>Veyangoda Pharmacy</td>
      <td>veyanpharma@gmail.com</td>
      <td>Sajeewa</td>
      <td>OK</td>
      <td>
        <a style="color: rgb(0, 255, 255);" href="google.lk">Update</a>
        <a style="color: red;" href="google.lk">Delete</a>
      </td>
    </tr>

    <tbody>
  </table>
</div>

</body>
</html>
