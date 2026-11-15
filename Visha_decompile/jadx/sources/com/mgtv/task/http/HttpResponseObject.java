package com.mgtv.task.http;

import com.google.gson.JsonElement;
import com.mgtv.json.JsonInterface;

public class HttpResponseObject implements JsonInterface {
    public transient a channel;
    private int code;
    public JsonElement data;
    private int err_code;
    private String err_msg;
    private String msg;

    public int getCode() {
        int i = this.code;
        return i != 0 ? i : this.err_code;
    }

    public String getMsg() {
        String str = this.msg;
        return str != null ? str : this.err_msg;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setMsg(String str) {
        this.msg = str;
    }
}
