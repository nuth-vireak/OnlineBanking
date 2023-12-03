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
    <div class="container">

       <!-- Card: Payment History Card -->
       <div class="card bg-dark text-white">
            <!-- Card Header -->
            <div class="card-header">
                <i class="fas fa-credit-card me-2" aria-hidden="true"></i> ប្រវត្តិការទូទាត់ប្រាក់
            </div>
            <!-- End Of Card Header -->
            <!-- Card Body -->
            <div class="card-body">
            <c:if test="${requestScope.payment_history != null}">
                <!-- Payment History Table -->
                <table class="table text-center table-striped bg-dark text-white">
                    <tr class="bg-dark text-white">
                        <th>លេខកូដទូទាត់ប្រាក់</th>
                        <th>ឈ្មោះអ្នកទទូលប្រាក់</th>
                        <th>លេខគណនីអ្នកទទូលប្រាក់</th>
                        <th>ចំនួនទឹកប្រាក់</th>
                        <th>ស្ថានភាព</th>
                        <th>គោលបំណង</th>
                        <th>លេខកូដមូលហេតុ</th>
                        <th>កាលបរិច្ឆេទ</th>
                    </tr>
                    <!-- Loop Through Payment History Records -->
                    <c:forEach items="${requestScope.payment_history}" var="payments">
                    <tr class="bg-dark text-white">
                        <td>${payments.payment_id}</td>
                        <td>${payments.beneficiary}</td>
                        <td>${payments.beneficiary_acc_no}</td>
                        <td>${payments.amount}</td>
                        <td>${payments.status}</td>
                        <td>${payments.reference_no}</td>
                        <td>${payments.reason_code}</td>
                        <td>${payments.created_at}</td>
                    </tr>
                     </c:forEach>
                    <!-- End Of Loop Through Payment History Records -->

                </table>
                <!-- End Of Payment History Table -->
            </c:if>
            </div>
            <!-- End Of Card Body -->
       </div>
       <!-- End Of Card: Payment History Card -->
    </div>
    <!-- End Of Container -->




  <!-- Footer -->
   <c:import url="components/incl/footer.jsp"/>

