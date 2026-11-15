package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class LoginCaptchaReq implements Serializable {
    public String captchaCode;
    public String captchaTicket;
    public String captchaV2;
    public String clientId;
    public String email;
    public int extraInfo = 1;
    public String otherAppId;
    public String password;
    public String phone;
    public String username;
}
