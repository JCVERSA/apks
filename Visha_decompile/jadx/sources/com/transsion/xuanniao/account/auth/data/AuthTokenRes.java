package com.transsion.xuanniao.account.auth.data;

import java.io.Serializable;

public class AuthTokenRes implements Serializable {
    public String accessToken;
    public int expiresIn;
    public String openId;
    public String refreshToken;
    public String scope;
    public String tokenType;
}
