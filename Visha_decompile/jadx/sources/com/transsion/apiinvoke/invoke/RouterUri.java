package com.transsion.apiinvoke.invoke;

import java.io.Serializable;

public class RouterUri implements Serializable {
    private static final long serialVersionUID = 8503400125974317790L;
    private String apiMethod;
    private String apiName;

    public RouterUri(String str, String str2) {
        this.apiName = str;
        this.apiMethod = str2;
    }

    public String getApiMethod() {
        return this.apiMethod;
    }

    public String getApiName() {
        return this.apiName;
    }

    public void setApiMethod(String str) {
        this.apiMethod = str;
    }

    public void setApiName(String str) {
        this.apiName = str;
    }

    public String toString() {
        return this.apiName + "#" + this.apiMethod;
    }
}
