package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class ResetPwdReq implements Serializable {
    public String clientId;
    public String email;
    public String password;
    public String phone;
    public String ticket;
    public String verificationCode;
}
