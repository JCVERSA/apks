package com.transsion.vishaplayersdk.gsyplayer.base.model;

import androidx.annotation.NonNull;
import java.io.Serializable;

public class VishaAccountInfo implements Serializable {
    private String vipUrl;
    private String token = "";
    private String PalmToken = "";
    private String openId = "";
    private String phone = "";
    private boolean isLogin = false;

    public String getOpenId() {
        return this.openId;
    }

    public String getPalmToken() {
        return this.PalmToken;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getToken() {
        return this.token;
    }

    public String getVipUrl() {
        return this.vipUrl;
    }

    public boolean isLogin() {
        return this.isLogin;
    }

    public void setLogin(boolean z) {
        this.isLogin = z;
    }

    public void setOpenId(String str) {
        this.openId = str;
    }

    public void setPalmToken(String str) {
        this.PalmToken = str;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setVipUrl(String str) {
        this.vipUrl = str;
    }

    @NonNull
    public String toString() {
        return "VishaAccountInfo{token='" + this.token + "'PalmToken='" + this.PalmToken + "', openId='" + this.openId + "', phone='" + this.phone + "', vipUrl='" + this.vipUrl + "', isLogin=" + this.isLogin + '}';
    }
}
