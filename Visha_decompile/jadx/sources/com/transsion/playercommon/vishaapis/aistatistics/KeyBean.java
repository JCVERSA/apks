package com.transsion.playercommon.vishaapis.aistatistics;

import com.transsion.dbdata.beans.onlinevideo.TypeBean;

public class KeyBean extends TypeBean {
    private int index;
    private String key;

    public KeyBean(String str, int i) {
        this.key = str;
        this.index = i;
    }

    public int getIndex() {
        return this.index;
    }

    public String getKey() {
        return this.key;
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public String toString() {
        return "KeyBean{key='" + this.key + "', index=" + this.index + '}';
    }
}
