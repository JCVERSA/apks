package com.mgmi.net.bean;

import java.io.Serializable;

public class BaseAdWidgetInfoImpBean implements com.mgadplus.netlib.json.a, Serializable {
    private static final long serialVersionUID = -8599159295602536954L;
    protected String adLogoAndOriginName = "";
    protected String cid;
    protected String mid;

    public void setAdLogoAndOriginName(String str) {
        this.adLogoAndOriginName = str;
    }

    public void setCid(String str) {
        this.cid = str;
    }

    public void setMid(String str) {
        this.mid = str;
    }
}
