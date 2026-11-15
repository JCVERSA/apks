package com.transsion.magicvideo.data;

import androidx.annotation.StringRes;

public class VideoSettingItem implements IVideoSetting {
    private String displayText;
    private boolean isTimer;

    @StringRes
    private int mIconResId;
    private int value;

    public VideoSettingItem(String str, int i, boolean z, @StringRes int i2) {
        this.displayText = str;
        this.value = i;
        this.isTimer = z;
        this.mIconResId = i2;
    }

    @Override
    public String displayText() {
        return this.displayText;
    }

    public int getIconResId() {
        return this.mIconResId;
    }

    public int getValue() {
        return this.value;
    }

    public boolean isTimer() {
        return this.isTimer;
    }

    public void setDisplayText(String str) {
        this.displayText = str;
    }

    public void setIconResId(int i) {
        this.mIconResId = i;
    }

    public void setTimer(boolean z) {
        this.isTimer = z;
    }

    public void setValue(int i) {
        this.value = i;
    }

    public VideoSettingItem(String str, int i, boolean z) {
        this.displayText = str;
        this.value = i;
        this.isTimer = z;
    }
}
