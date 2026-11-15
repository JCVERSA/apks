package com.transsion.dbdata.beans.sniff;

public class SniffGetScriptReqBean {
    private String app_version;
    private String script_key;
    private String script_version;

    public String getApp_version() {
        return this.app_version;
    }

    public String getScript_key() {
        return this.script_key;
    }

    public String getScript_version() {
        return this.script_version;
    }

    public void setApp_version(String str) {
        this.app_version = str;
    }

    public void setScript_key(String str) {
        this.script_key = str;
    }

    public void setScript_version(String str) {
        this.script_version = str;
    }
}
