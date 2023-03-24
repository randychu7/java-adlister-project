<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>

    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="min-h-screen bg-gray-100 py-6 flex flex-col justify-center sm:py-12">
        <div class="relative py-3 sm:max-w-xl sm:mx-auto">
            <div
                    class="absolute inset-0 bg-gradient-to-r from-gray-400 to-gray-800 shadow-lg transform -skew-y-6 sm:skew-y-0 sm:-rotate-6 sm:rounded-3xl">
            </div>
            <div class="relative px-4 py-10 bg-white shadow-lg sm:rounded-3xl sm:p-20">
                <div class="max-w-md mx-auto">
                    <div>
                        <h1 class="text-2xl font-semibold">Sign in to our platform!</h1>
                    </div>
                    <form action="/login" method = "post">
                    <div class="divide-y divide-gray-200">
                        <div class="py-8 text-base leading-6 space-y-4 text-gray-700 sm:text-lg sm:leading-7">
                            <div class="relative">
                                <h3>Username</h3>
                                <input autocomplete="off" id="username" name="username" type="text" class="peer placeholder-transparent h-10 w-full border-b-2 border-gray-300 text-gray-900 focus:outline-none focus:borer-rose-600" placeholder="Email address" />
<%--                                <label for="username" class="absolute left-0 -top-3.5 text-gray-600 text-sm peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-440 peer-placeholder-shown:top-2 transition-all peer-focus:-top-3.5 peer-focus:text-gray-600 peer-focus:text-sm">Username</label>--%>
                            </div>
                            <div class="relative">
                                <h3>Username</h3>
                                <input autocomplete="off" id="password" name="password" type="password" class="peer placeholder-transparent h-10 w-full border-b-2 border-gray-300 text-gray-900 focus:outline-none focus:borer-rose-600" placeholder="Password" />
<%--                                <label for="password" class="absolute left-0 -top-3.5 text-gray-600 text-sm peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-440 peer-placeholder-shown:top-2 transition-all peer-focus:-top-3.5 peer-focus:text-gray-600 peer-focus:text-sm">Password</label>--%>
                            </div>
                            <div class="relative">
                                <button class="bg-blue-500 text-white rounded-md px-2 py-1">Submit</button>
                            </div>
                            <div class="text-sm font-medium text-gray-500 dark:text-gray-500">
                                Not registered? <a href="/register" class="text-blue-700 hover:underline dark:text-blue-500">Create account</a>
                            </div>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<%--    --%>
<%--<div class = "w-full mt-[10em] flex align-item justify-center ">--%>
<%--<div class="w-full flex align-item justify-center max-w-sm p-4 bg-white border border-gray-200 rounded-lg shadow sm:p-6 md:p-8 dark:bg-gray-800 dark:border-gray-700">--%>
<%--    <form class="space-y-6" action="/login" method="post">--%>
<%--        <h5 class="text-xl font-medium text-gray-900 dark:text-white">Sign in to our platform</h5>--%>
<%--        <div>--%>
<%--            <label class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your Username</label>--%>
<%--            <input type="text" name="username" id="username" class="form-control bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" placeholder="name@company.com" required>--%>
<%--        </div>--%>
<%--        <div>--%>
<%--            <label for="password" class="block mb-2 form-control text-sm font-medium text-gray-900 dark:text-white">Your password</label>--%>
<%--            <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required>--%>
<%--        </div>--%>
<%--        <button type="submit" class="w-full text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Login to your account</button>--%>
<%--        <div class="text-sm font-medium text-gray-500 dark:text-gray-300">--%>
<%--            Not registered? <a href="/register" class="text-blue-700 hover:underline dark:text-blue-500">Create account</a>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>
<%--</div>--%>

</body>
</html>
