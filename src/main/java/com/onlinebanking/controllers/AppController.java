package com.onlinebanking.controllers;

import com.onlinebanking.models.Account;
import com.onlinebanking.models.PaymentHistory;
import com.onlinebanking.models.TransactionHistory;
import com.onlinebanking.models.User;
import com.onlinebanking.repository.AccountRepository;
import com.onlinebanking.repository.PaymentHistoryRepository;
import com.onlinebanking.repository.TransactHistoryRepository;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Controller
@RequestMapping("/app")
public class AppController {

    User user;
    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private PaymentHistoryRepository paymentHistoryRepository;
    @Autowired
    private TransactHistoryRepository transactHistoryRepository;

    @GetMapping("/dashboard")
    public ModelAndView getDashboard(HttpSession session) {
        ModelAndView getDashboardPage = new ModelAndView("dashboard");

        // Get the details of the logged i user:
        user = (User) session.getAttribute("user");

        // Get The Accounts Of The Logged In User:
        List<Account> getUserAccounts = accountRepository.getUserAccountsById(user.getUser_id());

        // Get Balance:
        BigDecimal totalAccountsBalance = accountRepository.getTotalBalance(user.getUser_id());

        // Set Objects:
        getDashboardPage.addObject("user", user);
        getDashboardPage.addObject("userAccounts", getUserAccounts);
        getDashboardPage.addObject("totalBalance", totalAccountsBalance);

        return getDashboardPage;
    }

    @GetMapping("/payment_history")
    public ModelAndView getPaymentHistory(HttpSession session) {
        // Set View:
        ModelAndView getPaymentHistoryPage = new ModelAndView("paymentHistory");

        // Get Logged In User:\
        user = (User) session.getAttribute("user");

        // Get Payment History / Records:
        List<PaymentHistory> userPaymentHistory = paymentHistoryRepository.getPaymentRecordsById(user.getUser_id());

        getPaymentHistoryPage.addObject("payment_history", userPaymentHistory);

        return getPaymentHistoryPage;

    }


    @GetMapping("/transact_history")
    public ModelAndView getTransactHistory(HttpSession session) {
        // Set View:
        ModelAndView getTransactHistoryPage = new ModelAndView("transactHistory");

        // Get Logged In User:
        user = (User) session.getAttribute("user");

        // Get Payment History / Records:
        List<TransactionHistory> userTransactHistory = transactHistoryRepository.getTransactionRecordsById(user.getUser_id());

        userTransactHistory.sort(Comparator.comparing(TransactionHistory::getTransaction_id));

        getTransactHistoryPage.addObject("transact_history", userTransactHistory);

        return getTransactHistoryPage;

    }

}
