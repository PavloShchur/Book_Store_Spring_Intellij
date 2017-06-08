<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link rel="stylesheet" type="text/css" href="/styles/signUp.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/js/signUp.js"></script>

    <%--<link href="/styles/main.css" rel="stylesheet"/>--%>
<%--<ul>--%>
    <%--<li><a href="/signup" target="_blank">Sign Up</a></li>--%>
    <%--<li><a href="/listOfBooks" target="_blank">Books</a></li>--%>
    <%--<li><a href="/listOfAuthors" target="_blank">Authors</a></li>--%>
    <%--<li><a href="/listOfGenres" target="_blank">Genres</a></li>--%>
    <%--<li><a href="/registration" target="_blank">Registration</a></li>--%>

    <%--<li style="float:right"><a class="active" href="#about">About</a></li>--%>
<%--</ul>--%>
<div class="form-wrap">
    <div class="tabs">
        <h3 class="signup-tab"><a class="active" href="#signup-tab-content">Sign Up</a></h3>
        <h3 class="login-tab"><a href="#login-tab-content">Login</a></h3>
    </div><!--.tabs-->

    <div class="tabs-content">
        <div id="signup-tab-content" class="active">
            <form:form modelAttribute="user" class="signup-form" method="post">
                <h3 style="text-align: center;color: red">${UserNameException}</h3>
                <form:input path="name" type="text" class="input" id="user_name" autocomplete="off"
                            placeholder="Username"/>
                <%--<h3 style="text-align: center;color: red">${emailException}</h3>--%>
                <form:input path="email" type="text" class="input" id="user_email" autocomplete="off"
                            placeholder="Email"/>
                <%--<h3 style="text-align: center;color: red">${passwordException}</h3>--%>
                <form:input path="password" type="password" class="input" id="user_pass" autocomplete="off"
                            placeholder="Password"/>
                <input type="submit" class="button" value="Sign Up">
            </form:form><!--.login-form-->
        </div><!--.signup-tab-content-->

        <div id="login-tab-content">
            <form:form class="login-form" action="/login" method="post">
                <input name="username" type="text" class="input" id="user_login" autocomplete="off" placeholder="Username">
                <input name="password" type="password" class="input" id="user_pass" autocomplete="off" placeholder="Password">
                <input type="submit" class="button" value="Login">
            </form:form><!--.login-form-->
        </div><!--.login-tab-content-->
    </div><!--.tabs-content-->
</div>

<%--<form:form modelAttribute="user" method="post" action="/saveUser">--%>
    <%--${UserNameException}--%>
    <%--<form:input path="name"/>--%>
    <%--<form:input path="email"/>--%>
    <%--<form:input path="password"/>--%>
    <%--<button>save User</button>--%>
<%--</form:form>--%>

<table class="border">
    <tr>
        <th>Username</th>
        <th>Email</th>
        <th>Password</th>
        <th>Delete</th>
        <th>Update</th>
    </tr>
<ol>
    <c:forEach var="user" items="${users}">
        <tr>
            <td style="border: 1px solid black">${user.name}</td>
            <td style="border: 1px solid black">${user.email}</td>
            <td style="border: 1px solid black">${user.password}</td>
            <td style="border: 1px solid black"><a
                    href="/deleteUser/${user.id}">Delete</a></td>
            <td style="border: 1px solid black "><a
                    href="/updateUser/${user.id}" target="_blank">Update</a></td>
            <br>
        </tr>
    </c:forEach>
</ol>

</table>
