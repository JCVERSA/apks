package com.mgtv.downloader.free.bean.response;

import com.mgtv.json.JsonInterface;
import java.io.Serializable;

public class OpenIDRep implements JsonInterface, Serializable {
    private String msg;
    private String result;
    private String resMsg = "";
    private int resCode = 0;
    private String data = "";
    private String state = "";

    public String getData() {
        return this.data;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getResCode() {
        return this.resCode;
    }

    public String getResMsg() {
        return this.resMsg;
    }

    public String getResult() {
        return this.result;
    }

    public String getState() {
        return this.state;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResCode(int i) {
        this.resCode = i;
    }

    public void setResMsg(String str) {
        this.resMsg = str;
    }

    public void setResult(String str) {
        this.result = str;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String toString() {
        return "{\"resMsg\":\"" + this.resMsg + "\"\"resCode\":\"" + this.resCode + "\", \"data\":\"" + this.data + "\"\"state\":\"" + this.state + "\"\"result\":\"" + this.result + "\", \"msg\":\"" + this.msg + "\"}";
    }
}
