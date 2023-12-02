package com.onlinebanking.controllers;

import com.onlinebanking.helpers.GenAccountNumber;
import com.onlinebanking.models.User;
import com.onlinebanking.repository.AccountRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountRepository accountRepository;

    @PostMapping("/create_account")
    public String createAccount(@RequestParam("account_name") String accountName,
                                @RequestParam("account_type") String accountType,
                                RedirectAttributes redirectAttributes,
                                HttpSession session) {

        // CHECK FOR EMPTY STRINGS:
        if (accountName.isEmpty() || accountType.isEmpty()) {
            redirectAttributes.addFlashAttribute("error", "Account Name and Type Cannot be Empty!");
            return "redirect:/app/dashboard";
        }

        // GET LOGGED IN USER:
        User user = (User) session.getAttribute("user");

        // GENERATE ACCOUNT NUMBER:
        int setAccountNumber = GenAccountNumber.generateAccountNumber();
        String bankAccountNumber = Integer.toString(setAccountNumber);

        // CREATE ACCOUNT:
        accountRepository.createBankAccount(user.getUser_id(), bankAccountNumber, accountName, accountType);

        // Set Success message:
        redirectAttributes.addFlashAttribute("success", "Account Created Successfully!");
        return "redirect:/app/dashboard";

    }
}
