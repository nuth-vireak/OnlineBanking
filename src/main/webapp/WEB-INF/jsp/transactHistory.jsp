<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="../css/fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/main.css">
    <script src="../js/bootstrap.bundle.js"></script>
    <title>Dashboard</title>
</head>
<body>

    <!-- Header -->
    <c:import url="components/incl/header.jsp"/>



    <!-- Container -->
    <div class="container my-3">

        <!-- Card: Transaction History Card -->
        <div class="card transaction-history shadow bg-dark text-white">
            <!-- Card Header -->
            <div class="card-header">
                <i class="fas fa-credit-card me-2" aria-hidden="true"></i> ប្រវត្តិការប្រតិបត្តិការ
            </div>
            <!-- End Of Card Header -->

            <!-- Card Body -->
            <div class="card-body">
                <c:if test="${requestScope.transact_history != null}">
                    <table class="table text-center table-striped bg-dark text-white">
                    <tr class="bg-dark text-white">
                        <th>លេខកូដប្រតិបត្តិការ</th>
                        <th>ប្រភេទប្រតិបត្តិការ</th>
                        <th>ចំនួនទឹកប្រាក់</th>
                        <th>គោលបំណង</th>
                        <th>ស្ថានភាព</th>
                        <th>េខកូដមូលហេតុ</th>
                        <th>កាលបរិច្ឆេទ</th>
                    </tr>
                    <c:forEach items="${requestScope.transact_history}" var="transactionHistory">
                      <tr class="bg-dark text-white">
                          <td>${transactionHistory.transaction_id}</td>
                          <td>${transactionHistory.transaction_type}</td>
                          <td>${transactionHistory.amount}</td>
                          <td>${transactionHistory.source}</td>
                          <td>${transactionHistory.status}</td>
                          <td>${transactionHistory.reason_code}</td>
                          <td>${transactionHistory.created_at}</td>
                      </tr>
                    </c:forEach>
                    </table>
                </c:if>
            </div>
            <!-- End Of Card Body -->
        </div>
        <!-- End Of Card: Transaction History Card -->
    </div>
    <!-- End Of Container -->



  <!-- Footer -->
   <c:import url="components/incl/footer.jsp"/>

