<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>

<div class = "flex w-full h-full">
    <div class="w-full h-full flex justify-center items-center align-items" style="position: relative; background-image: url('./images/tesla3.jpeg'); background-repeat: no-repeat; background-size: cover;">
        <div style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; overflow: hidden;">
            <div class="w-full h-full flex justify-center items-center align-items" style="position: relative; z-index: 1;">
                        <img src="./images/tesla3.jpeg" alt="Tesla"/>
            </div>
            <div style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; z-index: 0; filter: blur(10px); background-image: url('./images/tesla3.jpeg'); background-repeat: no-repeat; background-size: cover;"></div>
        </div>
    </div>

    <aside id="logo-sidebar" class="w-64 h-screen pt-20 bg-white border-l border-gray-200 " aria-label="Sidebar">
        <div class="h-full px-2 pb-4 overflow-y-auto bg-white">
            <div class="flex flex-col pb-3">
                <div class="text-black md:text-2xl font-bold dark:text-black"><h1>${ad.title}</h1></div>
                <div class=" text-gray-400 font-semibold mb-5">${ad.carCondition}</div>
                <div class=" text-black-400 md:text-2xl font-bold">Tesla ${ad.model}</div>
                <div class=" text-black-400 ">Listed ${ad.date}</div>

                <hr class="h-px my-2 mb-5 bg-gray-200 border-0 dark:bg-gray-300">

                <div class="text-black text-xl dark:text-black"><h3>Car Details</h3></div>
                <div class="text-[15px] text-black-400"><p> ${ad.year}</p></div>
                <div class="text-[15px] text-black-400"><p> ${ad.color}</p></div>
                <div class="text-[15px] mb-5 text-black-400"><p> ${ad.mileage} Miles</p></div>

                <hr class="h-px my-2 mb-5 bg-gray-200 border-0 dark:bg-gray-300">

                <div class="text-[15px] mt-5 text-gray-400"><p>This ad was posted by</p></div>
                <div class="text-[15px] text-black-400"><p>${user.username}</p></div>

                <div class="text-[15px] mt-5 text-black-400 font-bold"><p>Contact email: </p></div>
                <div class="text-[15px] mb-5 text-black-400"><p>${user.email}</p></div>

                <hr class="h-px my-2 bg-gray-200 border-0 dark:bg-gray-300">
                <div class="text-black text-xl dark:text-black"><h3>Description</h3></div>
                <div class="text-[15px] text-black-400"><p>${ad.description}</p></div>

                <a href="/ads" class="text-xl block mt-[5em] py-2 pl-3 pr-4 text-gray-700  md:p-0 dark:text-gray-700 dark:hover:text-gray-400">Back to Ads</a>
                <a href="/profile" class="text-xl block py-2 pl-3 pr-4 text-gray-700  md:p-0 dark:text-gray-700 dark:hover:text-gray-400">Back to Your Profile</a>

            </div>

        </div>

    </aside>
</div>
</body>
</html>
