package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class BindReq implements Serializable {
    private String email;
    private String phone;
    private String verificationCode;

    public String getEmail() {
        return this.email;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getVerificationCode() {
        return this.verificationCode;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setVerificationCode(String str) {
        this.verificationCode = str;
    }
}
