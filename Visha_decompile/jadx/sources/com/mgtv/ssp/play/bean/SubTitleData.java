package com.mgtv.ssp.play.bean;

import com.mgtv.json.JsonInterface;

public class SubTitleData implements JsonInterface {
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

    public int getAreaCode() {
        int i = this.language;
        if (i == 1) {
            return 10;
        }
        if (i == 2) {
            return 19;
        }
        if (i == 3) {
            return 23;
        }
        if (i == 4) {
            return 0;
        }
        if (i == 5) {
            return 1;
        }
        if (i != 9) {
            return i != 17 ? -1 : 18;
        }
        return 6;
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
}
