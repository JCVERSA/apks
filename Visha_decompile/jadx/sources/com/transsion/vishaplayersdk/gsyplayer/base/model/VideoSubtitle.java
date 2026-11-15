package com.transsion.vishaplayersdk.gsyplayer.base.model;

public class VideoSubtitle {
    private int areacode;
    private boolean bSelect;
    private String captionCountrySimpleName;
    private String captionSimpleName;
    private int language;
    private String name;

    public void create(String str, int i, String str2, String str3) {
        this.name = str;
        this.language = i;
        this.captionCountrySimpleName = str2;
        this.captionSimpleName = str3;
    }

    public int getAreacode() {
        return this.areacode;
    }

    public String getCaptionCountrySimpleName() {
        return this.captionCountrySimpleName;
    }

    public String getCaptionSimpleName() {
        return this.captionSimpleName;
    }

    public int getLanguage() {
        return this.language;
    }

    public String getName() {
        return this.name;
    }

    public boolean isSelected() {
        return this.bSelect;
    }

    public void setAreacode(int i) {
        this.areacode = i;
    }

    public void setCaptionCountrySimpleName(String str) {
        this.captionCountrySimpleName = str;
    }

    public void setCaptionSimpleName(String str) {
        this.captionSimpleName = str;
    }

    public void setLanguage(int i) {
        this.language = i;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setSelect(boolean z) {
        this.bSelect = z;
    }

    public String toString() {
        return "VideoSubtitle{name='" + this.name + "', captionCountrySimpleName='" + this.captionCountrySimpleName + "', captionSimpleName='" + this.captionSimpleName + "', language=" + this.language + ", areacode=" + this.areacode + ", selected=" + this.bSelect + '}';
    }
}
