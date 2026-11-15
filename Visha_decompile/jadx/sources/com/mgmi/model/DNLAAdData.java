package com.mgmi.model;

public class DNLAAdData implements com.mgadplus.netlib.json.a {
    private static final long serialVersionUID = 4459105938290645684L;
    private String castid;
    private DebugBean debug;

    public String getCastid() {
        return this.castid;
    }

    public DebugBean getDebug() {
        return this.debug;
    }

    public void setCastid(String str) {
        this.castid = str;
    }

    public void setDebug(DebugBean debugBean) {
        this.debug = debugBean;
    }
}
