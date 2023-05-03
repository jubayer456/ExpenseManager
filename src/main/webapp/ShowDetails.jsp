<%@ page import="java.util.*" %>
<%@ page import="model.PersonDetails , java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  </head>
  <body>
    <div class="w-75 border border-4 p-4 mx-auto m-5 rounded">
        <h1 class="text-center pb-2">Show all the Users Details</h1>
        <table class="table table-dark table-striped">
            <thead>
              <tr>
                <th scope="col">Name</th>
                <th scope="col">Amount</th>
                <th scope="col">Category</th>
                <th scope="col">Date</th>
                <th scope="col">Description</th>
              </tr>
            </thead>
            <tbody>
 <% List<PersonDetails> list = (ArrayList<PersonDetails>) request.getAttribute("list");%>
 <% for (PersonDetails personDetails:list){%>
                                <tr>
                                    <td><%=personDetails.getName()%></td>
                                    <td><%=personDetails.getAmount()%></td>
                                    <td><%=personDetails.getCategory()%></td>
                                    <td><%=personDetails.getDate()%></td>
                                    <td><%=personDetails.getDescription()%></td>
                                </tr>
                      <%}%>
            </tbody>
          </table>
          <a class="btn btn-primary" href="index.jsp" role="button">Insert Expense</a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>