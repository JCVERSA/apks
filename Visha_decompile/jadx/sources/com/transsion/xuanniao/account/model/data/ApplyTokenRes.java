package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class ApplyTokenRes implements Serializable {
    private String token;

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }
}
