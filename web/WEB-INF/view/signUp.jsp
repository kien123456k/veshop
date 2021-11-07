<!DOCTYPE html>
<html>
    <head>
        <title>VeShop - Sign up</title>
        <c:import url="component/head.jspf"/>
    </head>

    <body class="sign-in-basic">
        <div class="page-header align-items-start min-vh-100" style="background-image: url('https://res.cloudinary.com/dq7l8216n/image/upload/v1635217868/PRJ301_Assignment_Hero.jpg');" loading="lazy">
            <span class="mask bg-gradient-dark opacity-6"></span>
            <div class="container my-auto">
                <div class="row">
                    <div class="col-lg-4 col-md-8 col-12 mx-auto">
                        <div class="card z-index-0 fadeIn3 fadeInBottom">
                            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                                    <h4 class="text-white font-weight-bolder text-center mt-2 mb-0">Welcome to VeShop</h4>
                                </div>
                            </div>
                            <div class="card-body">
                                <c:choose>
                                    <c:when test="${requestScope.signUpStatus == true}">
                                        <p class="font-weight-bolder text-info text-gradient text-center mb-0">
                                            ${requestScope.signUpMessage}
                                        </p>
                                        <p class="mt-4 text-sm text-center">
                                            Go back to
                                            <a href="${baseURL}/login" class="text-primary text-gradient font-weight-bold">Sign in</a>
                                        </p>
                                    </c:when>
                                    <c:otherwise>
                                        <form role="form" action="signUp" method="POST" class="text-start">
                                            <div class="input-group input-group-outline my-3">
                                                <label class="form-label">Full Name</label>
                                                <input type="text" required name="fullName" class="form-control" required>
                                            </div>
                                            <div class="input-group input-group-outline my-3">
                                                <label class="form-label">UserID</label>
                                                <input type="text" required name="userID" class="form-control" required>
                                            </div>
                                            <div class="input-group input-group-outline mb-3">
                                                <label class="form-label">Password</label>
                                                <input type="password" required name="password" class="form-control"required>
                                            </div>
                                            <div class="text-center">
                                                <small class="font-weight-bold" style="color: red;">
                                                    <c:forEach var="error" items="${requestScope.signUpMessage}">
                                                        <span class="d-block alert-text">
                                                            ${error}
                                                        </span>
                                                    </c:forEach>
                                                </small>
                                            </div>
                                            <div class="text-center">
                                                <input type="hidden" name="action" value="signup">
                                                <input type="submit" value="sign up" class="btn bg-gradient-primary w-100 my-4 mb-2">
                                            </div>
                                            <p class="mt-4 text-sm text-center">
                                                Already have an account?
                                                <a href="${baseURL}/login" class="text-primary text-gradient font-weight-bold">Sign in</a>
                                            </p>
                                        </form>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <c:import url="component/header.jspf"/>
            <c:import url="component/footer.jspf"/>
        </div>
       
        <c:import url="component/scripts.jspf"/>
    </body>
</html>
