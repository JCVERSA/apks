package com.transsion.xuanniao.account.model.data;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;

public class LoginRes extends BaseEncryptRes {
    public static final String LOGIN = "LOGIN";
    public static final String REGISTER = "REGISTER";
    public AccountRes account;
    public ArrayList<AuthorizeThird> loginedThird;
    private String otherOpenId;
    public SdkToken token;

    public static class AuthorizeThird implements Serializable {
        public Long accountId;
        public String appId;
        public String displayName;
        public String openId;
    }

    public static class SdkToken implements Serializable {
        public String accessToken;
        public String authTicket;
        public String eventType;
        public String refreshToken;
    }

    public ArrayList<AuthorizeThird> getLoginedThird() {
        return this.loginedThird;
    }

    public String getOtherOpenId() {
        return TextUtils.isEmpty(this.otherOpenId) ? "0" : this.otherOpenId;
    }

    public void setLoginedThird(ArrayList<AuthorizeThird> arrayList) {
        this.loginedThird = arrayList;
    }
}
