package com.transsion.xuanniao.account.model.data;

public class VerifyCodeRes extends BaseEncryptRes {
    public String code;
    public String ticket;
    public String type;

    public String getCode() {
        return this.code;
    }

    public String getTicket() {
        return this.ticket;
    }

    public String getType() {
        return this.type;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setTicket(String str) {
        this.ticket = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
