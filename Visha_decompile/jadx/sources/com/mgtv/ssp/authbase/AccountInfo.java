package com.mgtv.ssp.authbase;

import java.io.Serializable;

public class AccountInfo implements Serializable {
    public static String defaultVipUrl = "https://club.mgtv.com/act/content_union_cashier.html?is_app_url=1&isHideNavBar=1&isFullScreen=1";
    private String vipurl;
    private String token = "";
    private String phone = "";
    private String openId = "";
    private boolean isLogin = false;

    public String getOpenId() {
        return this.openId;
    }

    public String getPhone() {
        return this.phone;
    }

    public String getToken() {
        return this.token;
    }

    public String getVipurl() {
        return this.vipurl;
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

    public void setPhone(String str) {
        this.phone = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setVipurl(String str) {
        this.vipurl = str;
    }
}
