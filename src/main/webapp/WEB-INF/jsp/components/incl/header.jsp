<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- Main Page Header -->
<header class="main-page-header mb-3 bg-dark">
    <!-- Container -->
    <div class="container d-flex align-items-center">
        <!-- Company Name -->
        <div class="company-name text-warning">
            ធនាគារ អនឡាញ
        </div>
        <!-- Company Name -->

        <!-- Navigation -->
        <nav class="navigation">
            <li><a href="/app/dashboard">ផ្ទាំងគ្រប់គ្រង</a></li>
            <li><a href="/app/payment_history">ប្រវត្តិទូទាត់</a></li>
            <li><a href="/app/transact_history">ប្រវត្តិប្រតិបត្តិការ</a></li>
        </nav>
        <!-- End Of Navigation -->

        <!-- Display Name -->
        <div class="display-name ms-auto text-white">
            <i class="fa fa-circle text-success me-1"></i> សួស្តី: <span>${user.first_name} ${user.last_name}</span>
        </div>
        <!-- End Of Display Name -->

        <!-- Log Out BUtton -->
        <a href="/logout" class="btn text-danger ms-2">
            <i class="fas fa-sign-out-alt " aria-hidden="true"></i> ចាកចេញ
        </a>
        <!-- End Of Log Out BUtton -->
    </div>
    <!-- End Of Container -->
</header>
<!-- End Of Main Page Header -->