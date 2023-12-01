package com.onlinebanking.controler_advisor;

import com.onlinebanking.models.User;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class AdvisorController {

    @ModelAttribute("registerUser")
    public User getUserDefaults() {
        return new User();
    }
}
