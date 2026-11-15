package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class AcquireCodeRes implements Serializable {
    private String ticket;

    public String getTicket() {
        return this.ticket;
    }

    public void setTicket(String str) {
        this.ticket = str;
    }
}
