package zoo.auth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import zoo.auth.entity.User;
import zoo.auth.service.SecurityService;
import zoo.auth.service.UserService;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @GetMapping("/register")
    private String register(Model model) {
        model.addAttribute("userForm", new User());

        return "register";
    }

    @PostMapping("/register")
    private String register(@ModelAttribute("userForm") User userForm) {

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/animal";
    }

    @GetMapping("/login")
    private String login(Model model, String error, String logout) {
        model.addAttribute("userForm", new User());

        if (error != null)
            model.addAttribute("error", "Your username or password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @PostMapping("/login")
    private String login(@ModelAttribute("userForm") User userForm) {

        securityService.autoLogin(userForm.getUsername(), userForm.getPassword());

        return "redirect:/animal";
    }

}
