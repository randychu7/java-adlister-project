

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<!--Nav Bar-->
<nav class="fixed top-0 z-50 w-full bg-white border-b border-gray-300">
    <div class="px-3 py-3 lg:px-5 lg:pl-3">
        <div class="flex items-center justify-between">
            <div class="flex items-center justify-start">
                <a href="" class="flex ml-2 md:mr-24">
                    <span class="self-center text-xl font-semibold sm:text-2xl whitespace-nowrap dark:text-gray-800">Tesla Market</span>
                </a>
            </div>

        </div>
    </div>
</nav>
<!-- Aside-->
<aside id="logo-sidebar" class="fixed hidden md:flex top-0 left-0 z-40 w-64 h-screen pt-20 bg-white border-r border-gray-200 " aria-label="Sidebar">
    <div class="h-full px-3 pb-4 mt-5 overflow-y-auto bg-white">
        <ul class="space-y-2">

            <li>
                <a href="/profile" class="flex hover:text-white items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">
                    <svg aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-white-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"></path></svg>
                    <span class="flex-1 ml-3 whitespace-nowrap text-gray-800 hover:text-white">My Profile</span>
                </a>
            </li>
            <li>
                <a href="/logout" class="flex hover:text-white items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-white-100 dark:hover:bg-gray-700">
                    <svg aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 3a1 1 0 00-1 1v12a1 1 0 102 0V4a1 1 0 00-1-1zm10.293 9.293a1 1 0 001.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L14.586 9H7a1 1 0 100 2h7.586l-1.293 1.293z" clip-rule="evenodd"></path></svg>

                    <span class="flex-1 ml-3 whitespace-nowrap text-gray-800 hover:text-white">Logout</span>
                </a>
            </li>
            <li>
                <a href="/ads/create" class="flex hover:text-white items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-white-100 dark:hover:bg-gray-700">
                    <svg aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 2a4 4 0 00-4 4v1H5a1 1 0 00-.994.89l-1 9A1 1 0 004 18h12a1 1 0 00.994-1.11l-1-9A1 1 0 0015 7h-1V6a4 4 0 00-4-4zm2 5V6a2 2 0 10-4 0v1h4zm-6 3a1 1 0 112 0 1 1 0 01-2 0zm7-1a1 1 0 100 2 1 1 0 000-2z" clip-rule="evenodd"></path></svg>

                    <span class="flex-1 ml-3 whitespace-nowrap text-gray-800 hover:text-white">Create an Ad</span>
                </a>
            </li>
        </ul>

        <!--Search function-->
        <div class = "w-full flex align-item justify-center ">
            <div class="w-full flex align-item justify-center max-w-sm p-4 mt-5 bg-white border border-gray-200 rounded-lg shadow sm:p-6 md:p-8 dark:border-gray-700">


                <%--Randy code--%>

                <form method="post" action="/results">
                    <h5 class="text-xl mb-5 font-medium text-gray-900">Search for your dream Tesla!</h5>

                    <div class="mb-6">


                        <label for="model" class="block mb-2 text-sm font-medium text-gray-900">Model</label>
                        <select name="model" id="model" class="shadow-sm border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option  value="" class="block mb-2 text-sm font-medium text-gray-900">Choose a Model</option>

                            <c:forEach var="ad" items="${ads}">
                                <option value="${ad.model}">${ad.model}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="mb-6">



                        <label for="year" class="block mb-2 text-sm font-medium text-gray-900 ">Year</label>
                        <select name="year" id="year" class="shadow-sm border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="" class="block mb-2 text-sm font-medium text-gray-900">Choose a year</option>
                            <c:forEach var="ad" items="${ads}">
                                <option value="${ad.year}">${ad.year}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="mb-6">



                        <label for="color" class="block mb-2 text-sm font-medium text-gray-900">Color</label>
                        <select name="color" id="color" class="shadow-sm border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5  dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="" class="block mb-2 text-sm font-medium text-gray-900">Choose a Color</option>
                            <c:forEach var="ad" items="${ads}">
                                <option value="${ad.color}">${ad.color}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="mb-6">



                        <label for="condition" class="block mb-2 text-sm font-medium text-gray-900">Condition</label>
                        <select name="condition" id="condition" class="shadow-sm border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="" class="block mb-2 text-sm font-medium text-gray-900">Choose a Condition</option>

                            <c:forEach var="ad" items="${ads}">
                                <option value="${ad.carCondition}">${ad.carCondition}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="mb-6">

                        <label for="mileage" class="block mb-2 text-sm font-medium text-gray-900">Mileage</label>
                        <select name="mileage" id="mileage" class="shadow-sm border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="" class="block mb-2 text-sm font-medium text-gray-900">Choose a Mileage</option>

                            <c:forEach var="ad" items="${ads}">
                                <option value="${ad.mileage}">${ad.mileage}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Submit</button>
                </form>
            </div>
        </div>
    </div>

</aside>

<div class="p-4 h-full sm:ml-64">
    <div class="p-4  mt-[5em]">
        <div class=" font-8xl text-[20px] font-bold mb-[2em]">All Posts</div>


        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-4">
            <!-- Card Template-->
            <c:forEach var="ad" items="${ads}">

                <div class="flex justify-center cursor-pointer hover:bg-gray-100 hover:scale-105 transition-all duration-300"  onclick="window.location.href='/ad-details?id=${ad.id}&userId=${ad.userId}'">
                    <div class="block w-[50em] rounded-lg bg-white shadow-lg bg-gray-50 dark:bg-gray-800">
                        <div>
                            <a href="#!">
                                <img
                                        class="rounded-t-lg"
                                        src="./images/tesla3.jpeg"
                                        alt="" />
                            </a>

                        </div>
                        <div class="flex flex-col space-between">
                            <div class="pr-6 pl-6 pb-6 pt-2">

                                <p class="mb-2 text-gray-500 text-[15px]">
                                        Date posted: ${ad.date}
                                </p>
                                <h5
                                        class="mb-2 text-xl font-medium leading-tight text-neutral-800 dark:text-neutral-50">
                                    Tesla ${ad.model}
                                </h5>

                                <div class = "grid grid-cols-2">
                                    <h2 class = "text-gray-500">Title</h2>
                                    <p class="mb-2 text-base text-neutral-600 dark:text-neutral-200"><a href="/ad-details?id=${ad.id}&userId=${ad.userId}">${ad.title}</a>
                                    </p>
                                    <h3 class = "text-gray-500">Color</h3>
                                    <p class="mb-2 text-base text-neutral-600 dark:text-neutral-200">
                                            ${ad.color}
                                    </p>
                                </div>

                            </div>

                        </div>


                    </div>

                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>


