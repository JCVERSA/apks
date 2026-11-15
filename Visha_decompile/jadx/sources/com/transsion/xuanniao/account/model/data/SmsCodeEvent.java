package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class SmsCodeEvent implements Serializable {
    public String code;

    public SmsCodeEvent(String str) {
        this.code = str;
    }
}
