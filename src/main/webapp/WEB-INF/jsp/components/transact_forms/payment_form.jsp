<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

            <!-- Card: Payment Card -->
            <div class="card payment-card bg-dark text-white">
                <!-- Card Body -->
                <div class="card-body">
                    <!-- Payment Form -->
                    <form action="/transact/payment" method="POST">

<!-- Form Group -->
                    <div class="form-group mb-3">
                        <label for="" class="mb-1">ឈ្មោះគណនីទទួលប្រាក់</label>
                        <input type="text" name="beneficiary" class="form-control" placeholder="វាយឈ្មោះគណនីទទួលប្រាក់">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-3">
                        <label for="" class="mb-1"> លេខគណនីទទួលប្រាក់</label>
                        <input type="text" name="account_number"class="form-control" placeholder="វាយលេខគណនីទទួលប្រាក់">
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
                    <div class="form-group mb-3">
                        <label for="" class="mb-1"> គោលបំណង</label>
                        <input type="text" name="reference" class="form-control" placeholder="វាយគោលបំណង">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-3">
                        <label for="" class="mb-1"> ចំនួនទឹកប្រាក់</label>
                        <input type="text" name="payment_amount" class="form-control" placeholder="វាយចំនួនទឹកប្រាក់">
                    </div>
                    <!-- End Of Form Group -->

                    <!-- Form Group -->
                    <div class="form-group mb-1 mt-2">
                        <button id="" class="btn btn-md transact-btn">បង់ប្រាក់</button>
                    </div>
                    <!-- End Of Form Group -->

                    </form>
                    <!-- End Of Payment Form -->
                </div>
                <!-- End Of Card Body -->

            </div>
            <!-- End Of Card: Payment Card -->