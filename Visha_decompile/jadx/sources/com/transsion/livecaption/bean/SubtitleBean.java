package com.transsion.livecaption.bean;

import androidx.annotation.Keep;

@Keep
public class SubtitleBean implements Cloneable {
    String inLanguage;
    InputType inputType;
    String outLanguage;
    String pkgName;

    public enum InputType {
        AUDIO,
        TEXT
    }

    public String getInLanguage() {
        return this.inLanguage;
    }

    public InputType getInputType() {
        return this.inputType;
    }

    public String getOutLanguage() {
        return this.outLanguage;
    }

    public String getPkgName() {
        return this.pkgName;
    }

    public void setInLanguage(String str) {
        this.inLanguage = str;
    }

    public void setInputType(InputType inputType) {
        this.inputType = inputType;
    }

    public void setOutLanguage(String str) {
        this.outLanguage = str;
    }

    public void setPkgName(String str) {
        this.pkgName = str;
    }

    public SubtitleBean m123clone() {
        try {
            return (SubtitleBean) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
