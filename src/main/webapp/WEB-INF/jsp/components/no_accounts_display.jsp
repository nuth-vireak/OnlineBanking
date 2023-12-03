    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <!-- Container: No Accounts  -->
    <div class="container">
        <!-- Card: No Accounts -->
        <div class="card no-accounts-card bg-dark">
            <!-- Card Body -->
            <div class="card-body">
                <!-- Card Title -->
                <h1 class="card-title">
                    <i class="fas fa-ban text-danger"></i> <span class="text-white">មិនទាន់បើកគណនីទេ</span>
                </h1>
                 <!-- End Of Card Title -->
                <hr>
                 <!-- Card Text -->
                 <div class="card-text text-white lh-base">
                     បច្ចុប្បន្ន អ្នកមិនទាន់បើកគណនីទេ <br>
                     សូមចុចប៊ូតុងខាងក្រោមដើម្បីបើកគណនីថ្មីរបស់អ្នក។
                 </div>
                 <!-- End Of Card Text -->
                 <br>
                 <button id="" class="btn btn-warning btn-lg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                    <i class="fa fa-credit-card"></i> បើកគណនីថ្មី
                 </button>

            </div>
            <!-- End Of Card Body -->
        </div>
        <!-- End Of Card: No Accounts -->

    </div>
    <!-- End Of Container: No Accounts  -->