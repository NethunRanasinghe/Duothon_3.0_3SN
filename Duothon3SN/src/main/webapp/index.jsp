<%--
  Created by IntelliJ IDEA.
  User: Sahansa
  Date: 24/02/2023
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./css/styles.css">
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

<!--search bar-->
<div class="wrapper">
    <div class="search_box">
        <div class="search_btn"><i class="fas fa-search"></i></div>
        <input type="text" class="input_search" placeholder="What are you looking for?">
    </div>
</div>
<!--search bar-->
<!--table results -->

<h2></h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Pharm ID</th>
            <th>Pharm Name</th>
            <th>Location</th>
            <th>Contact No</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tr>
            <td>4</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tr>
            <td>5</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tr>
            <td>6</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tr>
            <td>7</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tr>
            <td>8</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tr>
            <td>9</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tr>
            <td>10</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
            <td>Content</td>
        </tr>
        <tbody>
    </table>
</div>

<!--Footer-->
<br><br>

<footer class="p-4 bg-black  shadow md:px-6 md:py-8 ">
    <div class="sm:flex sm:items-center sm:justify-between">
        <a href="index.jsp" class="flex items-center mb-4 sm:mb-0">
            <img src="./images/logo.png" class="h-8 mr-3" alt="Flowbite Logo" />
            <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white"></span>
        </a>
        <ul class="flex flex-wrap items-center mb-6 text-sm text-gray-500 sm:mb-0 dark:text-gray-400">
            <li>
                <a href="privancy.jsp" class="mr-4 hover:underline md:mr-6 ">PRIVACY POLICY</a>
            </li>
            <li>
                <a href="term.jsp" class="mr-4 hover:underline md:mr-6">TERMS & CONDITIONS</a>
            </li>

        </ul>
    </div>
    <hr class="my-6 border-gray-200 sm:mx-auto dark:border-gray-700 lg:my-8" />
    <span class="block text-sm text-gray-500 sm:text-center dark:text-gray-400"><a href="#"
                                                                                   class="hover:underline"></a>COPYRIGHT © 2022 Veyangoda Pharmacy.ALL RIGHTS RESERVED.
          </span>
</footer>




</body>
</html>
