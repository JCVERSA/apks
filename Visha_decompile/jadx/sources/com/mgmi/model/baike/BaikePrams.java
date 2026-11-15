package com.mgmi.model.baike;

import java.io.Serializable;
import java.util.List;

public class BaikePrams implements com.mgadplus.netlib.json.a, Serializable {
    public int aid;
    public int float_ex;
    public int hid;
    public int iplay;
    public boolean isFullScreen;
    public int ispreview;
    public String lob;
    private String p;
    public List<String> starIds;
    public long trigger_time;
    public int vid;

    public void setP(String str) {
        this.p = str;
    }

    public String getP() {
        return this.p;
    }
}
