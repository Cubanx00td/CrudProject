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
                    <h1 class="text-center mb-3">Object Found</h1>
                    <div class="container">
                        <table class="table">
                          <thead class="thead-dark">
                            <tr>
                              <th scope="col">Id</th>
                              <th scope="col">Product Name</th>
                              <th scope="col">Description</th>
                              <th scope="col">Price</th>
                              <th scope="col">Status</th>
                              <th scope="col">Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            <c:forEach items="${productList}" var="p">
                              <tr>
                                <th scope="row">${p.id}</th>
                                <td>${p.name}</td>
                                <td>${p.description}</td>
                                <td>${p.price}</td>
                                <td>${p.status}</td>
                                <td><a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger m-2"></i></a></td>
                                <td><a href="update/${p.id}"><i class="fas fa-pen-nib text-primary m-2"></i></a></td>
                              </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="container">
                        <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
