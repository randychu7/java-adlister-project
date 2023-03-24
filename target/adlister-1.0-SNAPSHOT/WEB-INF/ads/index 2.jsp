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
<aside id="logo-sidebar" class="fixed top-0 left-0 z-40 w-64 h-screen pt-20 bg-white border-r border-gray-200 " aria-label="Sidebar">
    <div class="h-full px-3 pb-4 mt-5 overflow-y-auto bg-white">
        <ul class="space-y-2">

            <li>
                <a href="/profile" class="flex hover:text-white items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">
                    <svg aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 9a3 3 0 100-6 3 3 0 000 6zm-7 9a7 7 0 1114 0H3z" clip-rule="evenodd"></path></svg>
                    <span class="flex-1 ml-3 whitespace-nowrap text-gray-800 hover:text-white">My Profile</span>
                </a>
            </li>
            <li>
                <a href="/logout" class="flex hover:text-white items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">
                    <svg aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 3a1 1 0 00-1 1v12a1 1 0 102 0V4a1 1 0 00-1-1zm10.293 9.293a1 1 0 001.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L14.586 9H7a1 1 0 100 2h7.586l-1.293 1.293z" clip-rule="evenodd"></path></svg>

                    <span class="flex-1 ml-3 whitespace-nowrap text-gray-800 hover:text-white">Logout</span>
                </a>
            </li>
        </ul>

        <!--Search function-->
        <div class = "w-full flex align-item justify-center ">
            <div class="w-full flex align-item justify-center max-w-sm p-4 mt-5 bg-white border border-gray-200 rounded-lg shadow sm:p-6 md:p-8 dark:border-gray-700">

                <form method="post" action="/ads/create">
                    <h5 class="text-xl mb-5 font-medium text-gray-900">Search for your dream Tesla!</h5>

                    <div class="mb-6">
                        <label for="model" class="block mb-2 text-sm font-medium text-gray-900">Model</label>
                        <select name="model" id="model" class="shadow-sm border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-900" name="year">Choose a Model</option>

                            <option value="model-s" name="model">Model S</option>
                            <option value="model-3" name="model">Model 3</option>
                            <option value="model-x" name="model">Model X</option>
                            <option value="model-y" name="model">Model Y</option>
                        </select>
                    </div>

                    <div class="mb-6">
                        <label for="year" class="block mb-2 text-sm font-medium text-gray-900 ">Year</label>
                        <select name="year" id="year" class="shadow-sm border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-900" name="year">Choose a year</option>
                            <option value="2009" name="year">2009</option>
                            <option value="2010" name="year">2010</option>
                            <option value="2011" name="year">2011</option>
                            <option value="2012" name="year">2012</option>
                            <option value="2013" name="year">2013</option>
                            <option value="2014" name="year">2014</option>
                            <option value="2015" name="year">2015</option>
                            <option value="2016" name="year">2016</option>
                            <option value="2017" name="year">2017</option>
                            <option value="2018" name="year">2018</option>
                            <option value="2019" name="year">2019</option>
                            <option value="2020" name="year">2020</option>
                            <option value="2021" name="year">2021</option>
                            <option value="2022" name="year">2022</option>
                            <option value="2023" name="year">2023</option>
                            <option value="2024" name="year">2024</option>
                        </select>
                    </div>

                    <div class="mb-6">
                        <label for="color" class="block mb-2 text-sm font-medium text-gray-900">Color</label>
                        <select name="color" id="color" class="shadow-sm border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5  dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-900" name="year">Choose a Model</option>
                            <option value="blue-metallic" name="color">Blue Metallic</option>
                            <option value="brown-metallic" name="color">Brown Metallic</option>
                            <option value="gray-metallic" name="color">Gray Metallic</option>
                            <option value="green-metallic" name="color">Green Metallic</option>
                            <option value="sliver-metallic" name="color">Sliver Metallic</option>
                            <option value="pearl-white-multi-coat" name="color">Pearl White Multi-Coat</option>
                            <option value="red-multi-coat" name="color">Red Multi-Coat</option>
                            <option value="solid-black" name="color">Solid Black</option>
                            <option value="solid-white" name="color">Solid White</option>
                        </select>
                    </div>

                    <div class="mb-6">
                        <label for="condition" class="block mb-2 text-sm font-medium text-gray-900">Condition</label>
                        <select name="condition" id="condition" class="shadow-sm border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" name="year">Choose a Condition</option>

                            <option value="poor" name="condition">Poor</option>
                            <option value="fair" name="condition">Fair</option>
                            <option value="good" name="condition">Good</option>
                            <option value="excellent" name="condition">Excellent</option>
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

        <!--Ads go here-->
        <div class="grid grid-cols-3 gap-4 mb-4">
            <!-- Card Template-->
<%--        <c:forEach var="ad" items="${ads}">--%>
            <div class="flex justify-center">
                    <div class="block w-[50em] rounded-lg bg-white shadow-lg bg-gray-50 dark:bg-gray-800">
                    <div>
                    <a href="#!">
                    <img
                    class="rounded-t-lg"
                    src="./images/tesla3.jpeg"
                    alt="" />
                    </a>

                    </div>
                    <div class="pr-6 pl-6 pb-6 pt-2">
                    <h4 class="text-gray-500 text-[15px]">Posted by: ${sessionScope.user.username}</h4>
                    <p class="mb-2 text-gray-500 text-[15px]">
                    Date Posted: 20201210
                    </p>
                    <h5
                    class="mb-2 text-xl font-medium leading-tight text-neutral-800 dark:text-neutral-50">
                    Tesla ${ad.model}
                    </h5>

                    <div class = "grid grid-cols-2">
                    <h3 class = "text-gray-500">Title</h3>
                    <p class="mb-2 text-base text-neutral-600 dark:text-neutral-200">${ad.title}
                    </p>
                    <h3 class = "text-gray-500">Color</h3>
                    <p class="mb-2 text-base text-neutral-600 dark:text-neutral-200">
                        ${ad.color}
                    </p>
                    <h3 class = "text-gray-500">Mileage</h3>
                    <p class="mb-2 text-base text-neutral-600 dark:text-neutral-200">
                        ${ad.mileage}
                    </p>
                    <h3 class = "text-gray-500">Description</h3>
                    <p class="mb-2 text-base text-neutral-600 dark:text-neutral-200">
                        ${ad.description}
                    </p>
                    </div>
                    <div class = "flex justify-center items-center space-between w-full ">
                    <button type="submit" class="w-[6em] mr-3 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"><a href="/ads">Details</a></button>
                    <button type="submit" class="w-[6em] text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800">Delete</button>
                    </div>


                    </div>
            </div>
<%--                </c:forEach>--%>
    </div>



        </div>
    </div>
</div>

</body>
</html>
