<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <%@include file="./base.jsp"%>
  </head>
    <body>
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center text-danger mb-3">Object Not Found</h1>
                    <form id="searchForm" action="handle-product" method="post">
                        <div class="container text-center">
                            <a href="${pageContext.request.contextPath}/add-product" class="btn btn-outline-success">Add Product</a>
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </body>
</html>
