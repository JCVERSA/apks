package com.transsion.playercommon.subtitle.model;

public class AILaunageConfig {
    private String fromLang;
    private int lookahead = 10;
    private int lookback = 15;
    private String subConfigJson;
    private String toLang;

    public AILaunageConfig(String str, String str2) {
        this.fromLang = str;
        this.toLang = str2;
    }

    public String getFromLang() {
        return this.fromLang;
    }

    public int getLookahead() {
        return this.lookahead;
    }

    public int getLookback() {
        return this.lookback;
    }

    public String getSubConfigJson() {
        return this.subConfigJson;
    }

    public String getToLang() {
        return this.toLang;
    }

    public void setFromLang(String str) {
        this.fromLang = str;
    }

    public void setLookahead(int i) {
        this.lookahead = i;
    }

    public void setLookback(int i) {
        this.lookback = i;
    }

    public void setSubConfigJson(String str) {
        this.subConfigJson = str;
    }

    public void setToLang(String str) {
        this.toLang = str;
    }

    public String toString() {
        return "AILaunageConfig{fromLang=" + this.fromLang + ", toLang=" + this.toLang + '}';
    }
}
