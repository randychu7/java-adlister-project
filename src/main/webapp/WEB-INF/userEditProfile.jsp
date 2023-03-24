
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <title>User Profile</title>
</head>
<body>

<!-- This is an example component -->
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="h-full w-full mt-[10em]">

    <div class="border-b-2 block md:flex">

        <div class="w-full md:w-2/5 p-4 sm:p-6 lg:p-8 bg-white shadow-md">
            <div class="flex justify-between">
                <span class="text-xl font-semibold block">${sessionScope.user.username}</span>
                <a href="#" class="-mt-2 text-md font-bold text-white bg-gray-700 rounded-full px-5 py-2 hover:bg-gray-800">Edit</a>
            </div>

            <span class="text-gray-600">This information is secret so be careful</span>

            <div class="w-full p-8 mx-2 flex justify-center">
                <img id="showImage" class="max-w-xs w-32 items-center border" src="./images/profile.jpeg" alt="">
            </div>

            <div class="w-full p-8 mx-2 flex flex-col justify-center">
                <h3 class = "mb-5">First Name: ${sessionScope.user.firstname}</h3>
                <h3 class = "mb-5">Last Name: ${sessionScope.user.lastname}</h3>
                <h3 class = "mb-5">Phone Number: ${sessionScope.user.phoneNumber}</h3>
                <h3 class = "mb-5">Email: ${sessionScope.user.email}</h3>
            </div>


            <form method="post">
            <button type="submit" name="user.id" value="${sessionScope.user.id}"  class="w-[6em] ml-[2em] text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800">Delete</button>
            </form>


        </div>


        <div class="w-full md:w-3/5 p-8 bg-white lg:ml-4 shadow-md">
            <div class="rounded shadow p-6">

                <form method ="post">
                    <input name="id" id="id" value="${sessionScope.user.id}" type="hidden"/>
                    <input name="password" id="password" value="${sessionScope.user.password}" type="hidden"/>

                    <div class="pb-6">
                        <div class="flex form-group">
                            <label for ="username" class="font-semibold text-gray-700 block pb-1">User Name</label>
                            <input name="username" id = "username" class="border-1 rounded-r px-4 py-2 w-full" type="text" value="${sessionScope.user.username}" />
                        </div>
                </div>

                <div class="pb-6">
                    <div class="flex form-group">
                        <label for = "firstname" class="font-semibold text-gray-700 block pb-1">First Name</label>
                        <input name="firstname" id="firstname" class="border-1 rounded-r px-4 py-2 w-full" type="text" value="${sessionScope.user.firstname}" />
                    </div>
                </div>
                    <div class="pb-6">
                        <div class="flex form-group">
                            <label for = "lastname" class="font-semibold text-gray-700 block pb-1">Last Name</label>
                            <input name="lastname" id="lastname" class="border-1 rounded-r px-4 py-2 w-full" type="text" value="${sessionScope.user.lastname}" />
                        </div>
                    </div>
                    <div class="pb-6">
                        <div class="flex form-group">
                            <label for = "phone.number" class="font-semibold text-gray-700 block pb-1">Phone Number</label>
                            <input name="phone.number" id="phone.number" class="border-1 rounded-r px-4 py-2 w-full" type="text" value="111-111-1111" />
                        </div>
                    </div>
                <div class="pb-4 form-group">
                    <label for="email" class="font-semibold text-gray-700 block pb-1">Email</label>
                    <input name = "email" id="email" class="border-1 rounded-r px-4 py-2 w-full" type="email" value="${sessionScope.user.email}"/>
                </div>

                    <div class = "w-full flex justify-center items-center">
                          <button type="submit" name="submit" class="w-[6em] mr-5 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Edit</button>
                    </div>

                </form>
            </div>
        </div>

    </div>

</div>
</body>
</html>
