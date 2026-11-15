package com.transsion.playercommon.data;

import defpackage.r0a;

public class AiSubtitleConfig {
    public static final String TAG = "AiSubtitleConfig";
    private int id;
    private String subJson;

    public int getId() {
        return this.id;
    }

    public String getSubJson() {
        return r0a.g(this.subJson) ? "" : this.subJson;
    }

    public void setSubJson(String str) {
        this.subJson = str;
    }
}
