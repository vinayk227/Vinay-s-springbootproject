package com.klu.demo;

import jakarta.persistence.Entity;

import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name = "Javasdp")
public class User {

    @Id
    private String email;
    private String password;
    private String name; // Added name field for registration
    @Transient
    private String realCaptcha;
    @Transient
    private String captcha;
    @Transient
    private String hiddenCaptcha;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRealCaptcha() {
        return realCaptcha;
    }

    public void setRealCaptcha(String realCaptcha) {
        this.realCaptcha = realCaptcha;
    }

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }

    public String getHiddenCaptcha() {
        return hiddenCaptcha;
    }

    public void setHiddenCaptcha(String hiddenCaptcha) {
        this.hiddenCaptcha = hiddenCaptcha;
    }
}
