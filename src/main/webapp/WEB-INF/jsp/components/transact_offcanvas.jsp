<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- Start Of Transact OffCanvas -->
<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
    <div class="offcanvas-header">
        <h5 class="text-white mt-2" id="offcanvasExampleLabel">ប្រតិបត្តិការ</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <!-- Offcanvas: Transact Body -->
    <div class="offcanvas-body">
        <small class="card-text text-white">
            ជ្រើសរើសប្រភេទប្រតិបត្តិការដែលអ្នកចង់ធ្វើ
        </small>
        <!-- Transaction Type Drop Down List -->
        <select name="transact-type" class="form-control my-3" id="transact-type">
            <option value="">-- ជ្រើសរើសប្រភេទប្រតិបត្តិការ --</option>
            <option value="payment">បង់ប្រាក់</option>
            <option value="transfer">ផ្ទេរប្រាក់</option>
            <option value="deposit">ដាក់ប្រាក់</option>
            <option value="withdraw">ដកប្រាក់</option>
        </select>
        <!-- End Of Transaction Type Drop Down List -->


        <!-- Payments Form Card -->
        <c:import url="components/transact_forms/payment_form.jsp"/>
        <!-- Transfer Form Card -->
        <c:import url="components/transact_forms/transfer_form.jsp"/>
        <!-- Deposit Form Card -->
        <c:import url="components/transact_forms/deposit_form.jsp"/>
        <!-- Withdraw Form Card -->
        <c:import url="components/transact_forms/withdraw_form.jsp"/>


    </div>
    <!-- End Of Offcanvas: Transact Body -->
</div>
<!-- End Of Start Of Transact OffCanvas -->