<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <aside id="default-sidebar" class="hidden md:flex fixed top-0 left-0 z-40 w-64 h-screen " aria-label="Sidebar">
        <div class="h-full px-3 py-4 overflow-y-auto bg-gray-50 dark:bg-gray-800">
            <ul class="space-y-2">
                <li>

                    <div class="w-full max-w-sm bg-white border border-gray-200 rounded-lg box-shadow-lg dark:bg-gray-800 dark:border-gray-700">
                        <div class="flex flex-col items-center justify-center mt-1 pb-10">
                            <div class ="w-full p-3 flex flex-initial">
                                <a href = "/user-profile">
                            <button id="dropdownButton" data-dropdown-toggle="dropdown" class="inline-block text-gray-500 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-700 focus:ring-4 focus:outline-none focus:ring-gray-200 dark:focus:ring-gray-700 rounded-lg text-sm" type="button">
                                <span class="sr-only">Open dropdown</span>
                                <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M6 10a2 2 0 11-4 0 2 2 0 014 0zM12 10a2 2 0 11-4 0 2 2 0 014 0zM16 12a2 2 0 100-4 2 2 0 000 4z"></path></svg>
                            </button>
                                </a>
                            </div>

                            <img class="w-24 h-24 mb-3 rounded-full shadow-lg" src="./images/profile.jpeg" alt="Bonnie image"/>
                            <h5 class="mb-1 text-center text-xl font-medium text-gray-900 dark:text-white">Welcome, ${sessionScope.user.username}!</h5>
                            <span class="text-sm text-gray-500 dark:text-gray-400">Tesla Owner</span>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="/ads" class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">
                        <svg aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z"></path></svg>
                        <span class="flex-1 ml-3 whitespace-nowrap">Show Tesla Listings</span>
                    </a>
                </li>
                <li>
                    <a href="/ads/create" class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">
                        <svg aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10 2a4 4 0 00-4 4v1H5a1 1 0 00-.994.89l-1 9A1 1 0 004 18h12a1 1 0 00.994-1.11l-1-9A1 1 0 0015 7h-1V6a4 4 0 00-4-4zm2 5V6a2 2 0 10-4 0v1h4zm-6 3a1 1 0 112 0 1 1 0 01-2 0zm7-1a1 1 0 100 2 1 1 0 000-2z" clip-rule="evenodd"></path></svg>
                        <span class="flex-1 ml-3 whitespace-nowrap">Sell a Tesla</span>
                    </a>
                </li>
                <li>
                    <a href="/logout" class="flex items-center p-2 text-base font-normal text-gray-900 rounded-lg dark:text-white hover:bg-gray-100 dark:hover:bg-gray-700">
                        <svg aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-gray-500 transition duration-75 dark:text-gray-400 group-hover:text-gray-900 dark:group-hover:text-white" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 3a1 1 0 00-1 1v12a1 1 0 102 0V4a1 1 0 00-1-1zm10.293 9.293a1 1 0 001.414 1.414l3-3a1 1 0 000-1.414l-3-3a1 1 0 10-1.414 1.414L14.586 9H7a1 1 0 100 2h7.586l-1.293 1.293z" clip-rule="evenodd"></path></svg>
                        <span class="flex-1 ml-3 whitespace-nowrap">Sign Out</span>
                    </a>
                </li>
            </ul>
        </div>
    </aside>

    <div>
        <div class="p-[2em] sm:ml-64">
            <h2 class = "text-[30px] text-center font-bold mb-[2em]">My Posts</h2>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-4">
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


                                <h4 class="text-gray-500 text-[15px]">Posted by: ${user.username}</h4>
                                <p class="mb-2 text-gray-500 text-[15px]">
                                        ${ad.date}
                                </p>
                                <div class = "flex justify-center items-center space-between w-full ">

                                    <form action="/profile" method="POST">
                                        <button type="submit" name="ad.id" value="${ad.id}" class="w-[6em] mr-5 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"><a href="/ad-edit?id=${ad.id}&userId=${ad.userId}">Edit</a></button>
                                        <button type="submit" name="ad.id" value="${ad.id}" class="w-[6em] text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-800">Delete</button>
                                    </form>

                                </div>
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


