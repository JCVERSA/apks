package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class VerifyCodeReq implements Serializable {
    private String clientId;
    private String email;
    private String phone;
    private String sceneCode;
    private String ticket;
    private String verificationCode;
    private String verifyId;

    public String getClientId() {
        return this.clientId;
    }

    public String getEmail() {
        return this.email;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getSceneCode() {
        return this.sceneCode;
    }

    public String getTicket() {
        return this.ticket;
    }

    public String getVerificationCode() {
        return this.verificationCode;
    }

    public String getVerifyId() {
        return this.verifyId;
    }

    public void setClientId(String str) {
        this.clientId = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setSceneCode(String str) {
        this.sceneCode = str;
    }

    public void setTicket(String str) {
        this.ticket = str;
    }

    public void setVerificationCode(String str) {
        this.verificationCode = str;
    }

    public void setVerifyId(String str) {
        this.verifyId = str;
    }
}
