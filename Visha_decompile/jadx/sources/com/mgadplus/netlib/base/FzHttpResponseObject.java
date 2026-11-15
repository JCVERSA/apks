package com.mgadplus.netlib.base;

import com.google.gson.JsonElement;
import java.io.Serializable;

public class FzHttpResponseObject implements com.mgadplus.netlib.json.a, Serializable {
    public JsonElement data;
    private String err_msg;
    private Exception exception;
    private String msg;
    private int err_code = 0;
    private int code = 0;

    public int getCode() {
        int i = this.code;
        return i != 0 ? i : this.err_code;
    }

    public Exception getException() {
        return this.exception;
    }

    public String getMsg() {
        String str = this.msg;
        return str != null ? str : this.err_msg;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setErrorCode(int i) {
        this.err_code = i;
    }

    public void setErrorMsg(String str) {
        this.err_msg = str;
    }

    public FzHttpResponseObject setException(Exception exc) {
        this.exception = exc;
        return this;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
