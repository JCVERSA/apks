package com.transsion.hubsdk.api.lighting;

import android.os.Bundle;
import org.apache.commons.text.StringSubstitutor;

public class TranEffectConfig {
    public static final int PARAMETER_BATTERY = 4;
    public static final int PARAMETER_CLOCK = 16;
    public static final int PARAMETER_NONE = 0;
    public static final int PARAMETER_TEMPERATURE = 8;
    public static final int PARAMETER_TIME = 1;
    public static final int PARAMETER_VOLUME = 32;
    public static final int PARAMETER_WEATHER = 2;
    private final Bundle mBundle;
    private int mColor;
    private final long mCreatedTime;
    public String mCustomFilePath;
    private final int mEffectId;
    private final int mEffectParameter;
    private final boolean mIsHidden;
    private final boolean mIsPrebuilt;
    private final boolean mIsSupportColor;
    private final boolean mIsUnlocked;
    private int mPlayTime = 0;
    private int mType = 0;
    private int mPara = 0;
    private int mPara1 = 0;
    private int mPara2 = 0;
    private int mPara3 = 0;

    public TranEffectConfig(int i, int i2, boolean z, int i3, boolean z2, boolean z3, boolean z4, long j, Bundle bundle) {
        this.mEffectId = i;
        this.mColor = i2;
        this.mIsSupportColor = z;
        this.mEffectParameter = i3;
        this.mIsUnlocked = z2;
        this.mIsHidden = z3;
        this.mIsPrebuilt = z4;
        this.mCreatedTime = j;
        this.mBundle = bundle;
    }

    public int getColor() {
        return this.mColor;
    }

    public long getCreatedTime() {
        return this.mCreatedTime;
    }

    public String getCustomFilePath() {
        return this.mCustomFilePath;
    }

    public int getEffectId() {
        return this.mEffectId;
    }

    public int getEffectParameter() {
        return this.mEffectParameter;
    }

    public Bundle getExtraData() {
        return this.mBundle;
    }

    public int getPara() {
        return this.mPara;
    }

    public int getPara1() {
        return this.mPara1;
    }

    public int getPara2() {
        return this.mPara2;
    }

    public int getPara3() {
        return this.mPara3;
    }

    public int getPlayTime() {
        return this.mPlayTime;
    }

    public int getType() {
        return this.mType;
    }

    public boolean isHidden() {
        return this.mIsHidden;
    }

    public boolean isPrebuilt() {
        return this.mIsPrebuilt;
    }

    public boolean isSupportColor() {
        return this.mIsSupportColor;
    }

    public boolean isUnlocked() {
        return this.mIsUnlocked;
    }

    public void setColor(int i) {
        this.mColor = i;
    }

    public void setCustomFilePath(String str) {
        this.mCustomFilePath = str;
    }

    public void setPara(int i) {
        this.mPara = i;
    }

    public void setPara1(int i) {
        this.mPara1 = i;
    }

    public void setPara2(int i) {
        this.mPara2 = i;
    }

    public void setPara3(int i) {
        this.mPara3 = i;
    }

    public void setPlayTime(int i) {
        this.mPlayTime = i;
    }

    public void setType(int i) {
        this.mType = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TranEffectConfig{");
        sb.append("mEffectId=");
        sb.append(this.mEffectId);
        sb.append(", mColor=");
        sb.append(this.mColor);
        sb.append(" (0x");
        sb.append(Integer.toHexString(this.mColor));
        sb.append(")");
        sb.append(", mIsSupportColor=");
        sb.append(this.mIsSupportColor);
        sb.append(", mEffectParameter=");
        sb.append(this.mEffectParameter);
        sb.append(", mIsUnlocked=");
        sb.append(this.mIsUnlocked);
        sb.append(", mIsHidden=");
        sb.append(this.mIsHidden);
        sb.append(", mIsPrebuilt=");
        sb.append(this.mIsPrebuilt);
        sb.append(", mCreatedTime=");
        sb.append(this.mCreatedTime);
        sb.append(", mCustomFilePath=");
        sb.append(this.mCustomFilePath);
        sb.append(", mPlayTime=");
        sb.append(this.mPlayTime);
        sb.append(", mType=");
        sb.append(this.mType);
        sb.append(", mPara=");
        sb.append(this.mPara);
        sb.append(", mPara1=");
        sb.append(this.mPara1);
        sb.append(", mPara2=");
        sb.append(this.mPara2);
        sb.append(", mPara3=");
        sb.append(this.mPara3);
        sb.append(", mBundle=");
        Bundle bundle = this.mBundle;
        if (bundle != null) {
            sb.append(bundle.toString());
        } else {
            sb.append("null");
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }
}
