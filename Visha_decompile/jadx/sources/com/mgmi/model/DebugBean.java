package com.mgmi.model;

public class DebugBean implements com.mgadplus.netlib.json.a {
    private static final long serialVersionUID = -2741117225907726949L;
    private String host;
    private String server;
    private String st;

    public String getHost() {
        return this.host;
    }

    public String getServer() {
        return this.server;
    }

    public String getSt() {
        return this.st;
    }

    public void setHost(String str) {
        this.host = str;
    }

    public void setServer(String str) {
        this.server = str;
    }

    public void setSt(String str) {
        this.st = str;
    }
}
