<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <%@include file="./base.jsp"%>
  </head>
    <body>
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <h1 class="text-center">Edit the product details</h1>
                  </div>
                  <form id="productForm" action="${pageContext.request.contextPath}/handle-product" method="post">
                      <div class="form-group m-2">
                        <label for="id" class="form-label">Product Id</label>
                        <input class="form-control" type="number" name="id" id="id" value="${product.id}">
                      </div>
                      <div class="form-group m-2">
                        <label for="name" class="form-label">Product Name</label>
                        <input class="form-control" type="text" name="name" id="name" placeholder="Enter the product name" value="${product.name}">
                      </div>
                      <div class="form-group m-2">
                        <label for="description" class="form-label">Product Description</label>
                        <textarea class="form-control" type="text" name="description" id="description" placeholder="Enter the product description">${product.description}</textarea>
                      </div>
                      <div class="form-group m-2">
                        <label for="price" class="form-label">Product Price</label>
                        <input class="form-control" type="number" name="price" id="price" placeholder="Enter the product price" value="${product.price}">
                      </div>
                      <div class="form-group">
                          <label for="status">Select Status</label>
                          <select name="status" class="form-control" value="${product.status}">
                              <option value="entered">Entered</option>
                              <option value="in making">In Making</option>
                              <option value="ready to ship">Ready to ship</option>
                          </select>
                      </div>
                      <div class="container text-center">
                        <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                        <button type="submit" class="btn btn-secondary">Update</button>
                      </div>
                  </form>
                </div>
            </div>
    </body>
</html>
