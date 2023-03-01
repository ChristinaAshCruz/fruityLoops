<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Fruity Loops</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/script.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body class="m-5">
    <h1 class="mb-4">🍓 Fruit Store 🍓</h1>
    <div class="table">
      <table
        class="table table-bordered border border-warning border-3"
          style="--bs-border-opacity: 0.5"
      >
        <thead>
          <tr class="table-warning">
            <th>Name</th>
            <th>Price</th>
          </tr>
        </thead>
        <tbody class="table-group-divider">
          <c:forEach var="fruit" items="${fruitList}">
            <tr>
              <td>
                <c:out value="${fruit.name}" />
              </td>
               <td>
                <fmt:formatNumber value="${fruit.price}" type="currency"/>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>
