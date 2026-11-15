package com.mgmi.model;

import java.io.Serializable;

public class EntranceBean implements com.mgadplus.netlib.json.a, Serializable {
    public String from;
    public String lob;
    public String testTag;
    public String uid;

    public String getFrom() {
        return this.from;
    }

    public String getLob() {
        return this.lob;
    }

    public String getTestTag() {
        return this.testTag;
    }

    public String getUid() {
        return this.uid;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setLob(String str) {
        this.lob = str;
    }

    public void setTestTag(String str) {
        this.testTag = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }
}
