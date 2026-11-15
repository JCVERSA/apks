package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class LoginByCodeReq implements Serializable {
    private String clientId;
    private String email;
    private int extraInfo = 1;
    public String otherAppId;
    private String phone;
    private String verificationCode;

    public String getClientId() {
        return this.clientId;
    }

    public String getEmail() {
        return this.email;
    }

    public int getExtraInfo() {
        return this.extraInfo;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getVerificationCode() {
        return this.verificationCode;
    }

    public void setClientId(String str) {
        this.clientId = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setExtraInfo(int i) {
        this.extraInfo = i;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setVerificationCode(String str) {
        this.verificationCode = str;
    }
}
