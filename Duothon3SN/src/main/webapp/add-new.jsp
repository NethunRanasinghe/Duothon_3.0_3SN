<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 24/02/2023
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>


    <title>Blue Health</title>


    <link rel="stylesheet" href="./css/styles.css">
    <link href="/admin/table.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/film.png" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.2/flowbite.min.css" rel="stylesheet" />
    <!--        <style>
                table.table th:nth-child(4) {
                    width: 140px;
                }
                table.table th:nth-child(1) {
                    width: 65px;
                }
                table.table th:nth-child(8) {
                    width: 80px;
                }
                table.table th:nth-child(7) {
                    width: 120px;


                    }

                     .table-wrapper {
                        width: 1600px;
                        margin: 1px auto;
                        background: #fff;
                        padding: 1px;
                        box-shadow: 0 1px 1px rgba(0,0,0,.05);
                }
                table.table th:nth-child(6) {
                    width: 170px;
                }
            </style>-->

    <style>
        @media screen and (min-width: 1000px) {
            .sid {
                min-height: calc(290vh - 65px);
            }
        }
        .ccard-body {
            padding-right: 1.25rem;
            padding-top:0%;
            padding-bottom: 0%;
        }
    </style>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
            var actions = $("table td:last-child").jsp();
            $(".add-new").click(function () {
                $(this).attr("disabled", "disabled");
                var index = $("table tbody tr:last-child").index();
                var row = '<tr>' +
                    '<td><input type="text" class="form-control" name="name" id="name"></td>' +
                    '<td><input type="text" class="form-control" name="department" id="department"></td>' +
                    '<td><input type="text" class="form-control" name="phone" id="phone"></td>' +
                    '<td>' + actions + '</td>' +
                    '</tr>';
                $("table").append(row);
                $("table tbody tr").eq(index + 1).find(".add, .edit").toggle();
                $('[data-toggle="tooltip"]').tooltip();
            });
            $(document).on("click", ".add", function () {
                var empty = false;
                var input = $(this).parents("tr").find('input[type="text"]');
                input.each(function () {
                    if (!$(this).val()) {
                        $(this).addClass("error");
                        empty = true;
                    } else {
                        $(this).removeClass("error");
                    }
                });
                $(this).parents("tr").find(".error").first().focus();
                if (!empty) {
                    input.each(function () {
                        $(this).parent("td").jsp($(this).val());
                    });
                    $(this).parents("tr").find(".add, .edit").toggle();
                    $(".add-new").removeAttr("disabled");
                }
            });
            $(document).on("click", ".edit", function () {
                $(this).parents("tr").find("td:not(:last-child ,:nth-child(4))").each(function () {
                    $(this).jsp('<input type="text" class="form-control" value="' + $(this).text() + '">');
                });
                $(this).parents("tr").find(".add, .edit").toggle();
                $(".add-new").attr("disabled", "disabled");
            });
            // Delete row on delete button click
            $(document).on("click", ".delete", function () {
                $(this).parents("tr").remove();
                $(".add-new").removeAttr("disabled");
            });
        });


    </script>
</head>
<body>
<div class=" divide">

    <nav class="sidebar sid " >
        <ul class="nav">


            <center><img src="./images/logo.png" height="500" width="500" class="mt-10"></center>

            </li><br>
            <li class="nav-item " >
                <a class="nav-link uppercase font-bold" href="/admin/adindex.jsp">
                    Inventory

                </a>

                <div  >
                    <ul class="nav  sub-menu">
                        <li class="nav-item"> <a class="nav-link uppercase font-bold" href="/admin/addemployee.jsp">Add Item</a></li>
                        <li class="nav-item"> <a class="nav-link uppercase font-bold" href="/admin/empmanage.jsp">Update Item</a></li>

                    </ul>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link uppercase font-bold"   >
                    Profile

                </a>

            <li class="nav-item">
                <form method="post" action="/empLogoutServlet">
                    <input type="submit"
                           class="inline-block w-full px-10 py-3 bg-gray-700 text-white text-center  text-m leading-tight uppercase font-bold  shadow-md hover:bg-[#DAA520] hover:shadow-lg focus:bg-[#DAA520] focus:shadow-lg focus:outline-none focus:ring-0 active:bg-[#DAA520] active:shadow-lg transition duration-150 ease-in-out uppercase"
                           value="logout"></form>
            </li>

        </ul>
    </nav>

    <div class="container-fluid page-body-wrapper ">

        <nav class="navbar   ">
            <div class="navbar-menu-wrapper  ">

                <div class="navbar-brand-wrapper ">
                    <!--  <a class="navbar-brand brand-logo" href="/admin/adindex.jsp"><img src="./images/logo.png" class="mt-5 px-10" alt="logo"/></a>-->

                </div>



            </div>




        </nav>
        <div class="main-panel mt-10">
            <div class="content-wrapper">
                <div class="row">


                </div>
                ${message}
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title mb-8 font-bold uppercase text-xl">Inventory/Add new drug</h4>

                        <form class="forms-sample" id="contact" method="post" action="/addstaff">
                            <div class="form-group">
                                <select name="drugname">
                                    <option value="0">Select Drug name</option>
                                    <option value="1">Paracytamol</option>
                                    <option value="2">Citracin</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control"  name="supplier" placeholder="Supplier" required>
                            </div>
                            <div class="form-group">

                                <input type="date" class="form-control" name="expdate"  placeholder="Select Expiration Date" required>
                            </div>

                            <div class="form-group">

                                <input type="text" class="form-control"  name="unitprice" placeholder="Unit Price" required>
                            </div>

                            <div class="form-group">

                                <input type="text" class="form-control"  name="manufacturer" placeholder="Manufacturer" required>
                            </div>

                            <div class="form-group">

                                <input type="text" class="form-control"  name="ndc" placeholder="NDC(National Drug Code)" required>
                            </div>

                            <div class="form-group">

                                <input type="number" class="form-control"  name="quantity" placeholder="Quantity on hand" required>
                            </div>


                            <button type="submit" class="btn btn-primary bg-black ">Add Drug</button>

                        </form>
                    </div>
                </div>
            </div>




        </div>
    </div>

</div>
</div>




    </div>
</div>

</div>
</div>
</div>


<script src="/admin/test.js"></script>
<script>
    var myInput = document.getElementById("psw");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");

    var length = document.getElementById("length");

    myInput.onfocus = function () {
        document.getElementById("message").style.display = "block";
    }

    myInput.onblur = function () {
        document.getElementById("message").style.display = "none";
    }

    myInput.onkeyup = function () {
        // Validate lowercase letters
        var lowerCaseLetters = /[a-z]/g;
        if (myInput.value.match(lowerCaseLetters)) {
            letter.classList.remove("invalid");
            letter.classList.add("valid");
        } else {
            letter.classList.remove("valid");
            letter.classList.add("invalid");
        }

        // Validate capital letters
        var upperCaseLetters = /[A-Z]/g;
        if (myInput.value.match(upperCaseLetters)) {
            capital.classList.remove("invalid");
            capital.classList.add("valid");
        } else {
            capital.classList.remove("valid");
            capital.classList.add("invalid");
        }


        // Validate length
        if (myInput.value.length >= 8) {
            length.classList.remove("invalid");
            length.classList.add("valid");
        } else {
            length.classList.remove("valid");
            length.classList.add("invalid");
        }
    }
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.2/flowbite.min.js"></script>
</body>

</html>