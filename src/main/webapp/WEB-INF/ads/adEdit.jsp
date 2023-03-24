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
                <div class="flex justify-center">
                    <div class="block w-[50em] rounded-lg bg-white shadow-lg bg-gray-50 dark:bg-gray-800">
                        <div>
                            <a href="#!">
                                <img
                                        class="rounded-t-lg"
                                        src="./images/tesla3.jpeg"
                                        alt=""/>
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
                                <p class ="mb-2 text-base text-neutral-600 dark:text-neutral-200"><a href="/ad-details?id=${ad.id}&userId=${ad.userId}">${ad.title}</a>
                                </p>
                                <h3 class = "text-gray-500">Condition</h3>
                                <p class="mb-2 text-base text-neutral-600 dark:text-neutral-200">
                                    ${ad.carCondition}
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
                        </div>
                    </div>
                </div>
            </div>
            <div style="position: absolute; top: 0; left: 0; right: 0; bottom: 0; z-index: 0; filter: blur(10px); background-image: url('./images/tesla3.jpeg'); background-repeat: no-repeat; background-size: cover;"></div>
        </div>
    </div>

    <aside id="logo-sidebar" class="w-64 h-screen bg-white border-l border-gray-200 " aria-label="Sidebar">
        <div class="h-full px-2 pb-4 overflow-y-auto bg-white">
            <div class="flex flex-col pb-3">

                <form method="post">

                    <h5 class="text-xl mb-4 mt-5 font-medium text-gray-900 dark:text-black">Edit Your Tesla Ad!</h5>

                    <div class="mb-6">
                        <label for="title"  class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Title</label>
                        <input type="text" name="title" id="title" class="shadow-sm  border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" placeholder="Title of Ad.." required>
                    </div>

                    <div class="mb-6">
                        <label for="model" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Model</label>
                        <select name="model" id="model" class="shadow-sm  border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-400 dark:text-black" name="year">Choose a Model</option>
                            <option value="Model-S" name="model">Model S</option>
                            <option value="Model-3" name="model">Model 3</option>
                            <option value="Model-X" name="model">Model X</option>
                            <option value="Model-Y" name="model">Model Y</option>
                        </select>
                    </div>

                    <div class="mb-6">
                        <label for="model" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Year</label>
                        <select name="year" id="year" class="shadow-sm  border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-400 dark:text-white" name="year">Choose a year</option>
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
                        <label for="model" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Mileage</label>
                        <input type="text" id="mileage" name= "mileage" class="shadow-sm  border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" placeholder="Miles of car.." required>
                    </div>

                    <div class="mb-6">
                        <label for="model" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Color</label>
                        <select name="color" id="color" class="shadow-sm  border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" name="year">
                            <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-400 dark:text-white" name="color">Choose a Color</option>
                            <option value="Blue-Metallic" name="color">Blue Metallic</option>
                            <option value="Brown-Metallic" name="color">Brown Metallic</option>
                            <option value="Gray-Metallic" name="color">Gray Metallic</option>
                            <option value="Green-Metallic" name="color">Green Metallic</option>
                            <option value="Sliver-Metallic" name="color">Sliver Metallic</option>
                            <option value="Pearl-White-Multi-Coat" name="color">Pearl White Multi-Coat</option>
                            <option value="Red-Multi-Coat" name="color">Red Multi-Coat</option>
                            <option value="Solid-Black" name="color">Solid Black</option>
                            <option value="Solid-White" name="color">Solid White</option>
                        </select>
                    </div>

                    <div class="mb-6">
                        <label for="model" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Condition</label>
                        <select name="condition" id="condition" class="shadow-sm  border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                            <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-400 dark:text-white" name="year">Choose a Condition</option>

                            <option value="Poor" name="condition">Poor</option>
                            <option value="Fair" name="condition">Fair</option>
                            <option value="Good" name="condition">Good</option>
                            <option value="Excellent" name="condition">Excellent</option>
                        </select>
                    </div>

                    <div class="mb-6">
                        <label for="model" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Picture</label>
                        <input type="text" id="picture" name="picture" class="shadow-sm  border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" placeholder="Place a url link of your car.." required>
                    </div>

                    <div class="relative z-0 w-full mb-6 group">
                        <label for="model" class="block mb-2 text-sm font-medium text-gray-900 dark:text-black">Description</label>
                        <textarea id="message" rows="4" name = "description" class="shadow-sm  border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:border-gray-600 dark:placeholder-gray-400 dark:text-black dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" placeholder="Include details such as for trade or add a price..."></textarea>
                    </div>
                    <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Submit</button>
                </form>

                <a href="/ads" class="text-xl block py-2 pl-3 pr-4 text-gray-700  md:p-0 dark:text-gray-700 dark:hover:text-gray-400">Back to Ads</a>
                <a href="/ads" class="text-xl block py-2 pl-3 pr-4 text-gray-700  md:p-0 dark:text-gray-700 dark:hover:text-gray-400">Back to Your Profile</a>

            </div>

        </div>

    </aside>
</div>

</body>
</html>
