<%--
  Created by IntelliJ IDEA.
  User: sanid
  Date: 24/02/2023
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tw-elements/dist/css/index.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/flowbite@1.6.0/dist/flowbite.min.css" />
<!--
    <style>
        body {
            background-image: url('');
        }
    </style> -->
</head>

<body class="bg-slate-500">

<div class="md:container md:mx-auto">





    <section class="h-screen">
        <div class="px-6 h-full text-gray-800">
            <div
                    class="flex xl:justify-center lg:justify-between justify-center items-center flex-wrap h-full g-6"
            >
                <div
                        class="grow-0 shrink-1 md:shrink-0 basis-auto xl:w-6/12 lg:w-6/12 md:w-9/12 mb-12 md:mb-0"
                >
                    <img
                            src="./images/logo.png" alt=""
                            class="w-full"

                    />
                </div>
                <div class="xl:ml-20 xl:w-5/12 lg:w-5/12 md:w-8/12 mb-12 md:mb-0">
                    <form method="post" action="/emplogin">
                        <div>
                            <h1 class="text-6xl text-white">SIGN IN</h1><br>
                            <h3 class="text-white">PLEASE ENTER YOUR DETAILS.</h3>
                        </div>

                        <div
                                class="flex items-center my-4 before:flex-1 before:border-t before:border-gray-300 before:mt-0.5  after:border-t after:border-gray-300 after:mt-0.5"
                        >
                            <p class="text-center font-semibold mx-4 mb-0"></p>
                        </div>

                        <!-- Email input -->
                        <div class="mb-6">
                            <input
                                    type="email"
                                    class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                    id="exampleFormControlInput2"
                                    placeholder="EMAIL ADDRESS" name="email"
                            />
                        </div>

                        <!-- Password input -->
                        <div class="mb-6">
                            <input
                                    type="password"
                                    class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                                    id="exampleFormControlInput2"
                                    placeholder="PASSWORD" name="password"
                            />
                        </div>

                        <div class="flex justify-between items-center mb-6">
                            <div class="form-group form-check">


                                <div class="text-center lg:text-left">
                                    <input type="submit"
                                           class="inline-block mt-5 px-10 py-4 bg-gray-700 text-white font-medium text-m leading-tight uppercase rounded shadow-md hover:bg-[#DAA520] hover:shadow-lg focus:bg-[#DAA520] focus:shadow-lg focus:outline-none focus:ring-0 active:bg-[#DAA520] active:shadow-lg transition duration-150 ease-in-out uppercase"
                                           value="Login">
                                </div>
                    </form>
                </div>
            </div>
        </div>
    </section>





    <!--Footer-->
    <br><br>

    <footer class="p-4 bg-black  shadow md:px-6 md:py-8 ">
        <div class="sm:flex sm:items-center sm:justify-between">
            <a href="index.jsp" class="flex items-center mb-4 sm:mb-0">
                <img src="/assets/images/abc_cinema_logo.png" class="h-8 mr-3" alt="Flowbite Logo" />
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


</div>





<script src="test.js"></script>
<script>
    var myInput = document.getElementById("psw");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");

    var length = document.getElementById("length");

    myInput.onfocus = function() {
        document.getElementById("message").style.display = "block";
    }

    myInput.onblur = function() {
        document.getElementById("message").style.display = "none";
    }

    myInput.onkeyup = function() {
        // Validate lowercase letters
        var lowerCaseLetters = /[a-z]/g;
        if(myInput.value.match(lowerCaseLetters)) {
            letter.classList.remove("invalid");
            letter.classList.add("valid");
        } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
        }

        // Validate capital letters
        var upperCaseLetters = /[A-Z]/g;
        if(myInput.value.match(upperCaseLetters)) {
            capital.classList.remove("invalid");
            capital.classList.add("valid");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
        }


        // Validate length
        if(myInput.value.length >= 8) {
            length.classList.remove("invalid");
            length.classList.add("valid");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
        }
    }
</script>




<script>
    function Menu(e) {
        let list = document.querySelector('ul');
        e.name === 'grid' ? (e.name = "close", list.classList.add('top-[80px]'), list.classList.add('opacity-100'))
            : (e.name = "grid", list.classList.remove('top-[80px]'), list.classList.remove(opacity - 100))
    }
</script>
<script src="https://unpkg.com/flowbite@1.6.0/dist/flowbite.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/tw-elements/dist/js/index.min.js"></script>
</body>

</html>