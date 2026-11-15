package com.hunantv.imgo.data;

import com.mgtv.json.JsonInterface;

public class ErrorData implements JsonInterface {
    private String code;
    private String msg;
    private String param;
    private String path;
    private String url;

    public String getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getParam() {
        return this.param;
    }

    public String getPath() {
        return this.path;
    }

    public String getUrl() {
        return this.url;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setParam(String str) {
        this.param = str;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
