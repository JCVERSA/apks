package com.mgtv.downloader.free.bean;

import com.mgtv.downloader.free.bean.response.JsonEntity;
import com.mgtv.json.JsonInterface;
import java.io.Serializable;

public class BaseBean<T> extends JsonEntity implements JsonInterface, Serializable {
    private static final long serialVersionUID = 1;
    private T data;
    private String errorcode;
    private String errorinfo;
    private String result;

    public T getData() {
        return this.data;
    }

    public String getErrorcode() {
        return this.errorcode;
    }

    public String getErrorinfo() {
        return this.errorinfo;
    }

    public String getResult() {
        return this.result;
    }

    public void setData(T t) {
        this.data = t;
    }

    public void setErrorcode(String str) {
        this.errorcode = str;
    }

    public void setErrorinfo(String str) {
        this.errorinfo = str;
    }

    public void setResult(String str) {
        this.result = str;
    }

    public String toString() {
        return "BaseBean{result='" + this.result + "', errorcode='" + this.errorcode + "', data=" + this.data + ", errorinfo='" + this.errorinfo + "'}";
    }
}
