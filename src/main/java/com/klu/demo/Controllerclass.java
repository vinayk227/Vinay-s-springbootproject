package com.klu.demo;

import java.io.BufferedReader;

import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;



import cn.apiclub.captcha.Captcha;

@Controller
public class Controllerclass {

    @Autowired
    DAO dao;

    @RequestMapping("/")
    public String showLoginPage(Model m) {
        User usr = new User();
        Captcha captcha = CaptchaService.createCaptcha(200, 70);
        usr.setRealCaptcha(CaptchaService.encodeCaptcha(captcha));
        usr.setHiddenCaptcha(captcha.getAnswer());
        usr.setCaptcha("");
        m.addAttribute("command", usr);
        return "home";
    }

    
    @PostMapping("/save")
    public String login(@ModelAttribute User user, Model m) {
        if (user.getHiddenCaptcha().equals(user.getCaptcha())) {
             dao.save(user);
            return "login"; 
            	
        } else {
            User ur = new User();
            Captcha captcha = CaptchaService.createCaptcha(200, 70);
            ur.setRealCaptcha(CaptchaService.encodeCaptcha(captcha));
            ur.setHiddenCaptcha(captcha.getAnswer());
            ur.setCaptcha("");
            m.addAttribute("command", ur);
            m.addAttribute("message", "Invalid Captcha");
            return "Signin";
        }
    }

    @RequestMapping("/register")
    public String showRegistrationForm(Model m) {
        User user = new User();
        m.addAttribute("command", user);
        return "register";
    }

    @PostMapping("/Signin")
    public String registerUser(@ModelAttribute User user,Model m) {
      User usrr = new User();
        Captcha captcha = CaptchaService.createCaptcha(200, 70);
        usrr.setRealCaptcha(CaptchaService.encodeCaptcha(captcha));
        usrr.setHiddenCaptcha(captcha.getAnswer());
        usrr.setCaptcha("");
        m.addAttribute("command", usrr);
        // Implement user registration logic here
        // Example: dao.save(user);

        return "Signin"; // Redirect to the login page after successful registration
    }
    
    @RequestMapping("/aboutus")
    public String handleAboutUsPost() {
        return "aboutus"; 
    }
    
    @RequestMapping("/home")
    public String homemethod() {
        return "home";
    }

    @RequestMapping("/vote")
    public String votingmethod() {
        return "results"; // Voting interface page
    }
    
    @RequestMapping("/Vote")
    public String voting() {
        return "Vote"; // Voting interface page
    }
    @RequestMapping("/Vote1")
    public String voting1() {
        return "Vote1"; // Voting interface page
    }
    @RequestMapping("/Vote2")
    public String voting2() {
        return "Vote2"; // Voting interface page
    }
    @RequestMapping("/Vote3")
    public String voting3() {
        return "Vote3"; // Voting interface page
    }
    @RequestMapping("/Vote4")
    public String voting4() {
        return "Vote4"; // Voting interface page
    }
    @RequestMapping("/Result")
    public String result() {
        return "Result"; // Voting interface page
    }
    
    
    
    
    
    @RequestMapping("/sender")
    public String sender() {
      try {
        cuser c1 = new cuser();
        c1.setComu("You");
        URL url = new URL("http://localhost:8082/receiver");
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");
        con.setRequestProperty("Accept", "application/json");
        con.setUseCaches(false);
       
      } catch (Exception e) {
        
        e.printStackTrace();
      }
      return "casted";
    }
    
    
    
    
   
}