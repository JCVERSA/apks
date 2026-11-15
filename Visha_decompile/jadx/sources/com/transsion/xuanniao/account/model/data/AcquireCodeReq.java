package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class AcquireCodeReq implements Serializable {
    private String anemicTicket;
    private String captchaCode;
    private String captchaTicket;
    private String captchaV2;
    private String clientId;
    private String email;
    private String googleHashCode;
    private String phone;
    private String sceneCode;

    public String getAnemicTicket() {
        return this.anemicTicket;
    }

    public String getCaptchaCode() {
        return this.captchaCode;
    }

    public String getCaptchaTicket() {
        return this.captchaTicket;
    }

    public String getCaptchaV2() {
        return this.captchaV2;
    }

    public String getClientId() {
        return this.clientId;
    }

    public String getEmail() {
        return this.email;
    }

    public String getGoogleHashCode() {
        return this.googleHashCode;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getSceneCode() {
        return this.sceneCode;
    }

    public void setAnemicTicket(String str) {
        this.anemicTicket = str;
    }

    public void setCaptchaCode(String str) {
        this.captchaCode = str;
    }

    public void setCaptchaTicket(String str) {
        this.captchaTicket = str;
    }

    public void setCaptchaV2(String str) {
        this.captchaV2 = str;
    }

    public void setClientId(String str) {
        this.clientId = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setGoogleHashCode(String str) {
        this.googleHashCode = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setSceneCode(String str) {
        this.sceneCode = str;
    }
}
