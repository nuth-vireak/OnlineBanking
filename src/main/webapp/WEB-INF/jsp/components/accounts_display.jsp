<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- Container -->
<div class="container d-flex">

    <button id="add-account-btn" class="btn btn-lg shadow" type="button" data-bs-toggle="offcanvas"
            data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
        <i class="fa fa-credit-card"></i> បើកគណនីថ្មី
    </button>

    <!-- Transaction Button -->
    <button id="transact-btn" class="btn btn-lg ms-auto shadow" type="button" data-bs-toggle="offcanvas"
            data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
        <i class="fa fa-wallet"></i> ប្រតិបត្តិការ
    </button>
    <!-- End Of Transaction Button -->

</div>
<!-- End Of Container -->

<!-- Container: Total Accounts Balance Display -->
<div class="container d-flex py-3">
    <h2 class="me-auto text-white">សមតុល្យសរុប</h2>
    <h2 class="ms-auto text-white">
        <c:if test="${requestScope.totalBalance != null}">
            <c:out value="${totalBalance}"/>
        </c:if>
    </h2>
</div>
<!-- End Of Container: Total Accounts Balance Display -->

<!-- Container: Accordion Menu / Drop Down -->
<div class="container">
    <!-- Accordion Menu / Drop Down -->
    <c:if test="${requestScope.userAccounts != null }">

        <c:forEach items="${requestScope.userAccounts}" var="account">

            <div class="accordion accordion-flush bg-dark text-white" id="accordionFlushExample">
                <div class="accordion-item bg-dark text-white">
                    <h2 class="accordion-header bg-dark text-white" id="flush-headingOne">
                        <button class="accordion-button collapsed bg-warning" type="button"
                                data-bs-toggle="collapse"
                                data-bs-target="#flush-${account.account_id}" aria-expanded="false"
                                aria-controls="flush-collapseOne">
                            <i class="fa fa-credit-card me-2"></i>${account.account_name}
                        </button>
                    </h2>
                    <div id="flush-${account.account_id}" class="accordion-collapse collapse bg-dark text-white"
                         aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body bg-dark text-white">
                            <!-- Account Details List -->
                            <ul class="list-group list-group-flush bg-dark text-white">
                                <li class="list-group-item d-flex bg-dark text-white">ឈ្មោះគណនី <span
                                        class="ms-auto text-white"><b>${account.account_name}</b></span></li>
                                <li class="list-group-item d-flex bg-dark text-white">លេខគណនី <span
                                        class="ms-auto text-white"><b>${account.account_number}</b></span></li>
                                <li class="list-group-item d-flex bg-dark text-white">ប្រភេទគណនី <span
                                        class="ms-auto text-white"><b>${account.account_type}</b></span></li>
                                <li class="list-group-item d-flex bg-dark text-white">សមតុល្យគណនី <span
                                        class="ms-auto text-white"><b>${account.balance}</b></span></li>
                                <li class="list-group-item d-flex bg-dark text-white">ថ្ងៃបើកគណនី <span
                                        class="ms-auto text-white"><b>${account.updated_at}</b></span></li>
                            </ul>
                            <!-- Account Details List -->
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

    </c:if>
    <!-- End Of Accordion Menu / Drop Down -->
</div>
<!-- End Of Container: Accordion Menu / Drop Down -->