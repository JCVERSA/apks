package com.mgmi.model;

import java.io.Serializable;

public class DianaNotifySdkData implements com.mgadplus.netlib.json.a, Serializable {
    private String act;
    private String appid;
    private String lob;
    private String ntime;
    private String sptime;

    public String getAct() {
        return this.act;
    }

    public String getAppid() {
        return this.appid;
    }

    public String getLob() {
        return this.lob;
    }

    public String getNtime() {
        return this.ntime;
    }

    public String getSptime() {
        return this.sptime;
    }

    public void setAct(String str) {
        this.act = str;
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public void setLob(String str) {
        this.lob = str;
    }

    public void setNtime(String str) {
        this.ntime = str;
    }

    public void setSptime(String str) {
        this.sptime = str;
    }
}
