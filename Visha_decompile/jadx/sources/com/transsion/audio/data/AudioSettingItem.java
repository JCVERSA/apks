package com.transsion.audio.data;

import androidx.annotation.IdRes;
import androidx.annotation.StringRes;

public class AudioSettingItem {

    @StringRes
    private int mIconResId;

    @IdRes
    private int resId;
    private int value;

    public AudioSettingItem(int i, @StringRes int i2) {
        this.value = i;
        this.mIconResId = i2;
    }

    public int getIconResId() {
        return this.mIconResId;
    }

    public int getResId() {
        return this.resId;
    }

    public int getValue() {
        return this.value;
    }

    public void setResId(int i) {
        this.resId = i;
    }

    public void setValue(int i) {
        this.value = i;
    }
}
