package com.mgmi.model;

import java.io.Serializable;
import java.util.List;

public class PerformingBean implements com.mgadplus.netlib.json.a, Serializable {
    public List<ClipBean> clips;
    public String year;

    public List<ClipBean> getClips() {
        return this.clips;
    }

    public String getYear() {
        return this.year;
    }

    public void setClips(List<ClipBean> list) {
        this.clips = list;
    }

    public void setYear(String str) {
        this.year = str;
    }
}
