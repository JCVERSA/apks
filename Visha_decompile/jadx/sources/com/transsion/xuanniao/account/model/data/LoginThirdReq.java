package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class LoginThirdReq implements Serializable {
    public static final int FACEBOOK_TYPE = 1;
    public static final int GOOGLE_TYPE = 2;
    public static final int INFINIX_TYPE = 5;
    public static final int ITEL_TYPE = 6;
    public static final int LINE_TYPE = 7;
    public static final int TECNO_TYPE = 4;
    public static final int TWITTER_TYPE = 3;
    public static final int VK_TYPE = 8;
    private String authTicket;
    public String clientId;
    private int extraInfo = 1;
    public String otherAppId;
    private String thirdToken;
    private int thirdType;
    private int userId;

    public String getAuthTicket() {
        return this.authTicket;
    }

    public String getClientId() {
        return this.clientId;
    }

    public int getExtraInfo() {
        return this.extraInfo;
    }

    public String getThirdToken() {
        return this.thirdToken;
    }

    public int getThirdType() {
        return this.thirdType;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setAuthTicket(String str) {
        this.authTicket = str;
    }

    public void setClientId(String str) {
        this.clientId = str;
    }

    public void setExtraInfo(int i) {
        this.extraInfo = i;
    }

    public void setThirdToken(String str) {
        this.thirdToken = str;
    }

    public void setThirdType(int i) {
        this.thirdType = i;
    }

    public void setUserId(int i) {
        this.userId = i;
    }
}
