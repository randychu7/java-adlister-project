<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class = "w-full mt-[10em] flex align-item justify-center ">
    <div class="w-full flex align-item justify-center max-w-sm p-4 bg-white border border-gray-200 rounded-lg shadow sm:p-6 md:p-8 dark:bg-gray-800 dark:border-gray-700">

        <form method="post" action="/ads/create">

            <h5 class="text-xl mb-10 font-medium text-gray-900 dark:text-white">Create an ad for your Tesla!</h5>

            <div class="mb-6">
                <label for="title"  class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Title</label>
                <input type="text" name = "title" id="title" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" placeholder="Title of Ad.." required>
            </div>

            <div class="mb-6">
                <label for="model" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Model</label>
                <select name="model" id="model" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                    <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" name="year">Choose a Model</option>

                    <option value="Model-S" name="model">Model S</option>
                    <option value="Model-3" name="model">Model 3</option>
                    <option value="Model-X" name="model">Model X</option>
                    <option value="Model-Y" name="model">Model Y</option>
                </select>
            </div>

            <div class="mb-6">
                <label for="year" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Year</label>
                <select name="year" id="year" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                    <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" name="year">Choose a year</option>
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
                <label for="mileage" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Mileage</label>
                <input type="text" id="mileage" name= "mileage" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" placeholder="Miles of car.." required>
            </div>

            <div class="mb-6">
                <label for="color" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Color</label>
                <select name="color" id="color" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                    <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" name="year">Choose a Model</option>
                    <option value="Blue-Metallic" name="color">Blue Metallic</option>
                    <option value="Brown-Metallic" name="color">Brown Metallic</option>
                    <option value="Gray-Metallic" name="color">Gray Metallic</option>
                    <option value="Green-Metallic" name="color">Green Metallic</option>
                    <option value="Sliver-Metallic" name="color">Sliver Metallic</option>
                    <option value="Pearl-White-Multi-coat" name="color">Pearl White Multi-Coat</option>
                    <option value="Red-Multi-Coat" name="color">Red Multi-Coat</option>
                    <option value="Solid-Black" name="color">Solid Black</option>
                    <option value="Solid-White" name="color">Solid White</option>
                </select>
            </div>

            <div class="mb-6">
                <label for="condition" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Condition</label>
                <select name="condition" id="condition" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light">
                    <option value="Placeholder" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white" name="year">Choose a Condition</option>

                    <option value="Poor" name="condition">Poor</option>
                    <option value="Fair" name="condition">Fair</option>
                    <option value="Good" name="condition">Good</option>
                    <option value="Excellent" name="condition">Excellent</option>
                </select>
            </div>

            <div class="mb-6">
                <label for="picture" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Picture</label>
                <input type="text" id="picture" name="picture" class="shadow-sm bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500 dark:shadow-sm-light" placeholder="Place a url link of your car.." required>
            </div>

            <div class="relative z-0 w-full mb-6 group">
                <label for="message" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Description</label>
                <textarea id="message" rows="4" name = "description" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Include details such as for trade or add a price..."></textarea>
            </div>
            <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Submit</button>
        </form>
    </div>
</div>

</body>
</html>
