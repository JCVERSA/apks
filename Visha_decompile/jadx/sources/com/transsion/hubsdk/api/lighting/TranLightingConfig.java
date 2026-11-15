package com.transsion.hubsdk.api.lighting;

import android.os.Bundle;
import android.util.SparseArray;
import org.apache.commons.text.StringSubstitutor;

public class TranLightingConfig {
    public static final int TIME_MODE_CUSTOM = 1;
    public static final int TIME_MODE_DEFAULT = 0;
    private int mBrightness;
    public Bundle mBundle;
    public int mConfigVersion;
    public int mCustomEffectVersion;
    private int mCustomEndHour;
    private int mCustomEndMinute;
    private int mCustomStartHour;
    private int mCustomStartMinute;
    public boolean mDoNotDisturb;
    private int mEndHour;
    private int mEndMinute;
    private boolean mIsEnable;
    public boolean mLowBattery;
    private final int mMaxBrightness;
    private final int mMinBrightness;
    public boolean mSatelliteMode;
    private SparseArray<TranSceneConfig> mSceneConfigs;
    private int mStartHour;
    private int mStartMinute;
    private int mTimeMode = 0;
    public int mPara = 0;
    public int mPara1 = 0;
    public int mPara2 = 0;
    public int mPara3 = 0;

    public TranLightingConfig(SparseArray<TranSceneConfig> sparseArray, int i, int i2, int i3, int i4, int i5, int i6, int i7, Bundle bundle) {
        this.mSceneConfigs = sparseArray == null ? new SparseArray<>() : sparseArray;
        this.mMinBrightness = i;
        this.mMaxBrightness = i2;
        this.mBrightness = i3;
        this.mStartHour = i4;
        this.mStartMinute = i5;
        this.mEndHour = i6;
        this.mEndMinute = i7;
        this.mBundle = bundle;
    }

    public int getBrightness() {
        return this.mBrightness;
    }

    public Bundle getBundle() {
        return this.mBundle;
    }

    public int getConfigVersion() {
        return this.mConfigVersion;
    }

    public int getCustomEffectVersion() {
        return this.mCustomEffectVersion;
    }

    public int getCustomEndHour() {
        return this.mCustomEndHour;
    }

    public int getCustomEndMinute() {
        return this.mCustomEndMinute;
    }

    public int getCustomStartHour() {
        return this.mCustomStartHour;
    }

    public int getCustomStartMinute() {
        return this.mCustomStartMinute;
    }

    public int getEndHour() {
        return this.mEndHour;
    }

    public int getEndMinute() {
        return this.mEndMinute;
    }

    public int getMaxBrightness() {
        return this.mMaxBrightness;
    }

    public int getMinBrightness() {
        return this.mMinBrightness;
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

    public TranSceneConfig getSceneConfig(int i) {
        SparseArray<TranSceneConfig> sparseArray = this.mSceneConfigs;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i);
    }

    public SparseArray<TranSceneConfig> getSceneConfigs() {
        return this.mSceneConfigs;
    }

    public int getStartHour() {
        return this.mStartHour;
    }

    public int getStartMinute() {
        return this.mStartMinute;
    }

    public int getTimeMode() {
        return this.mTimeMode;
    }

    public boolean isDoNotDisturb() {
        return this.mDoNotDisturb;
    }

    public boolean isEnable() {
        return this.mIsEnable;
    }

    public boolean isLowBattery() {
        return this.mLowBattery;
    }

    public boolean isSatelliteMode() {
        return this.mSatelliteMode;
    }

    public void setBrightness(int i) {
        this.mBrightness = i;
    }

    public void setConfigVersion(int i) {
        this.mConfigVersion = i;
    }

    public void setCustomEffectVersion(int i) {
        this.mCustomEffectVersion = i;
    }

    public void setCustomEndHour(int i) {
        this.mCustomEndHour = i;
    }

    public void setCustomEndMinute(int i) {
        this.mCustomEndMinute = i;
    }

    public void setCustomStartHour(int i) {
        this.mCustomStartHour = i;
    }

    public void setCustomStartMinute(int i) {
        this.mCustomStartMinute = i;
    }

    public void setEnable(boolean z) {
        this.mIsEnable = z;
    }

    public void setEndHour(int i) {
        this.mEndHour = i;
    }

    public void setEndMinute(int i) {
        this.mEndMinute = i;
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

    public void setStartHour(int i) {
        this.mStartHour = i;
    }

    public void setStartMinute(int i) {
        this.mStartMinute = i;
    }

    public void setTimeMode(int i) {
        this.mTimeMode = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TranLightingConfig{");
        sb.append("mIsEnable=");
        sb.append(this.mIsEnable);
        sb.append(", mCustomEffectVersion=");
        sb.append(this.mCustomEffectVersion);
        sb.append(", mConfigVersion=");
        sb.append(this.mConfigVersion);
        sb.append(", mBrightness=");
        sb.append(this.mBrightness);
        sb.append(", mMinBrightness=");
        sb.append(this.mMinBrightness);
        sb.append(", mMaxBrightness=");
        sb.append(this.mMaxBrightness);
        sb.append(", mLowBattery=");
        sb.append(this.mLowBattery);
        sb.append(", mDoNotDisturb=");
        sb.append(this.mDoNotDisturb);
        sb.append(", mSatelliteMode=");
        sb.append(this.mSatelliteMode);
        sb.append(", mStartHour=");
        sb.append(this.mStartHour);
        sb.append(", mStartMinute=");
        sb.append(this.mStartMinute);
        sb.append(", mEndHour=");
        sb.append(this.mEndHour);
        sb.append(", mEndMinute=");
        sb.append(this.mEndMinute);
        sb.append(", mTimeMode=");
        sb.append(this.mTimeMode);
        sb.append(", mCustomStartHour=");
        sb.append(this.mCustomStartHour);
        sb.append(", mCustomStartMinute=");
        sb.append(this.mCustomStartMinute);
        sb.append(", mCustomEndHour=");
        sb.append(this.mCustomEndHour);
        sb.append(", mCustomEndMinute=");
        sb.append(this.mCustomEndMinute);
        sb.append(", mPara=");
        sb.append(this.mPara);
        sb.append(", mPara1=");
        sb.append(this.mPara1);
        sb.append(", mPara2=");
        sb.append(this.mPara2);
        sb.append(", mPara3=");
        sb.append(this.mPara3);
        sb.append(", mSceneConfigs=[");
        if (this.mSceneConfigs != null) {
            sb.append("size=");
            sb.append(this.mSceneConfigs.size());
            if (this.mSceneConfigs.size() > 0) {
                sb.append(", sceneIds=[");
                for (int i = 0; i < this.mSceneConfigs.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.mSceneConfigs.keyAt(i));
                }
                sb.append("]");
            }
        } else {
            sb.append("null");
        }
        sb.append("]");
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
