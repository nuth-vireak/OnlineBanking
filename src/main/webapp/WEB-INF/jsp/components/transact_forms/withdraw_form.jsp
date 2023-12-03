<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- Card: Withdraw Card -->
<div class="card withdraw-card bg-dark text-white">
    <!-- Card Body -->
    <div class="card-body">

        <!-- Deposit Form -->
        <form action="/transact/withdraw" method="POST" class="deposit-form">
            <!-- Form Group -->
            <div class="form-group mb-3">
                <label for="" class="mb-1"> បញ្ចូលចំនួនទឹកប្រាក់ដែលចង់ដកចេញ</label>
                <input type="text" name="withdrawal_amount" class="form-control" placeholder="បញ្ចូលចំនួនទឹកប្រាក់">
            </div>
            <!-- End Of Form Group -->

            <!-- Form Group -->
            <div class="form-group mb-3">
                <label for="" class="mb-1">ជ្រើសរើសគណនី</label>
                <!-- Select Account Option -->
                <select name="account_id" class="form-control" id="">
                    <option value="">-- ជ្រើសរើសគណនី --</option>
                    <c:if test="${userAccounts != null}">
                        <c:forEach items="${userAccounts}" var="selectAccount">
                            <option value="${selectAccount.account_id}">${selectAccount.account_name}</option>
                        </c:forEach>
                    </c:if>
                </select>
                <!-- End Select Account Option -->
            </div>
            <!-- End Of Group -->


            <!-- Form Group -->
            <div class="form-group mb-1 mt-2">
                <button id="" class="btn btn-md transact-btn">ដកប្រាក់</button>
            </div>
            <!-- End Of Form Group -->
        </form>
        <!-- End Withdrawal Form  -->
    </div>
    <!-- End Of Card Body -->
</div>
<!-- End Of Card: Withdraw Card -->