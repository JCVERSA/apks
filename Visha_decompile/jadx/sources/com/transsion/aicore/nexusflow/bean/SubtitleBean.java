package com.transsion.aicore.nexusflow.bean;

import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;

@Keep
public class SubtitleBean implements Cloneable {

    @SerializedName("inLanguage")
    public String mInLanguage;

    @SerializedName("inputType")
    public InputType mInputType;

    @SerializedName("outLanguage")
    public String mOutLanguage;

    @SerializedName("pkgName")
    public String mPkgName;

    @Keep
    public enum InputType {
        AUDIO,
        TEXT
    }

    public SubtitleBean m113clone() {
        try {
            return (SubtitleBean) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }
}
