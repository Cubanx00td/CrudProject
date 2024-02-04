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
                    <h1 class="text-center mb-3">Welcome to Product Library</h1>
                    <h2>Search</h2>
                    <form id="searchForm" action="search" method="get">
                        <div class="form-group m-2">
                            <label for="name" class="form-label">Product Name</label>
                            <input class="form-control" type="text" name="name" id="name">
                        </div>
                        <div class="container text-center">
                            <button type="submit" class="btn btn-primary">Search</button>
                        </div>
                      </form>
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

                    <div class="container">
                        <a href="add-product" class="btn btn-outline-success">Add Product</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
