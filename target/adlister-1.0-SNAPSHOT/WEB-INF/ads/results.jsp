<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Search Results" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class ="flex flex-col mt-[3em] w-full p-10 justify-center items-center">
    <h1 class="text-[30px] font-bold mb-10">Search Results</h1>
<div class="grid grid-cols-3 gap-4 mb-4 ">

    <c:if test="${empty ads}">
        <p>No ads match your search criteria.</p>
    </c:if>

    <c:forEach var="ad" items="${ads}">
        <c:if test="${empty param.model || fn:containsIgnoreCase(ad.model, param.model)}">
            <c:if test="${empty param.year || ad.year == param.year}">
                <c:if test="${empty param.mileage || ad.mileage <= param.mileage}">
                    <c:if test="${empty param.condition || fn:containsIgnoreCase(ad.condition, param.condition)}">
                        <c:if test="${empty param.color || fn:containsIgnoreCase(ad.color, param.color)}">

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
                        </c:if>
                    </c:if>
                </c:if>
            </c:if>
        </c:if>
    </c:forEach>

</div>
</div>
</body>
</html>


