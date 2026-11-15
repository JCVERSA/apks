package com.mgmi.model;

public class IncentiveVastAd extends VASTAd {
    private String coverBg;
    private String entryce;
    private String smallIcon;

    public String getEntryce() {
        return this.entryce;
    }

    public String getSmallIcon() {
        return this.smallIcon;
    }

    public void setCover(String str) {
        this.coverBg = str;
    }

    public void setEntryce(String str) {
        this.entryce = str;
    }

    public void setIcon(String str) {
        this.smallIcon = str;
    }
}
