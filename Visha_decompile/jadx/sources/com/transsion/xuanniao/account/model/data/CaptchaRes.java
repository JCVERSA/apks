package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class CaptchaRes implements Serializable {
    private String captchaBase64;
    private String captchaCode;
    private String captchaTicket;

    public String getCaptchaBase64() {
        return this.captchaBase64;
    }

    public String getCaptchaCode() {
        return this.captchaCode;
    }

    public String getCaptchaTicket() {
        return this.captchaTicket;
    }

    public void setCaptchaBase64(String str) {
        this.captchaBase64 = str;
    }

    public void setCaptchaCode(String str) {
        this.captchaCode = str;
    }

    public void setCaptchaTicket(String str) {
        this.captchaTicket = str;
    }
}
