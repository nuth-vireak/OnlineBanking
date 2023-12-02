package com.onlinebanking.controllers;

import com.onlinebanking.models.User;
import com.onlinebanking.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AuthController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/login")
    public ModelAndView getLogin() {
        System.out.println("In Login Page Controller");
        ModelAndView getLoginPage = new ModelAndView("login");
        getLoginPage.addObject("PageTitle", "Login");
        return getLoginPage;
    }

    @PostMapping("/login")
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        Model model,
                        HttpSession session
    ) {

        // VALIDATE INPUT FIELDS / FORM DATA:
        if (email.isEmpty() || email == null || password.isEmpty() || password == null) {
            model.addAttribute("error", "Username or Password Cannot be Empty");
            return "login";
        }

        // CHECK IF EMAIL EXISTS:
        String getEmailInDatabase = userRepository.getUserEmail(email);

        // Check If Email Exists:
        if (getEmailInDatabase != null) {
            // Get Password In Database:
            String getPasswordInDatabase = userRepository.getUserPassword(getEmailInDatabase);

            // Validate Password:
            if (!BCrypt.checkpw(password, getPasswordInDatabase)) {
                model.addAttribute("error", "Incorrect Username or Password");
                return "login";
            }
            // End Of Validate Password.
        } else {
            model.addAttribute("error", "Something went wrong please contact support");
            return "error";
        }

        // PROCEED TO LOG THE USER IN:
        User user = userRepository.getUserDetails(getEmailInDatabase);

        // Set Session Attributes:
        session.setAttribute("user", user);

        return "redirect:/app/dashboard";

    }

    @GetMapping("/logout")
    public String logout(HttpSession session, RedirectAttributes redirectAttributes) {
        session.invalidate();
        redirectAttributes.addFlashAttribute("logged_out", "Logged out successfully");
        return "redirect:/login";
    }

}
