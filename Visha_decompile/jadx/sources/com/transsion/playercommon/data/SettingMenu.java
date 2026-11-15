package com.transsion.playercommon.data;

public class SettingMenu {
    public boolean mEnable;
    public int mFlag;
    public int mIconStringId;
    public int mIconTextColor;
    public int mStateResId;
    public int mTitleColor;
    public int mTitleResId;

    public SettingMenu() {
        this.mEnable = true;
    }

    public int getIconStringId() {
        return this.mIconStringId;
    }

    public int getIconTextColor() {
        return this.mIconTextColor;
    }

    public SettingMenu(int i, int i2, int i3, int i4, int i5) {
        this.mEnable = true;
        this.mIconTextColor = i;
        this.mIconStringId = i2;
        this.mTitleResId = i3;
        this.mTitleColor = i4;
        this.mFlag = i5;
    }

    public SettingMenu(int i, int i2, int i3, int i4, boolean z) {
        this.mStateResId = i;
        this.mTitleResId = i2;
        this.mTitleColor = i3;
        this.mFlag = i4;
        this.mEnable = z;
    }

    public SettingMenu(int i, int i2, int i3, int i4, int i5, boolean z) {
        this.mIconTextColor = i;
        this.mIconStringId = i2;
        this.mTitleResId = i3;
        this.mTitleColor = i4;
        this.mFlag = i5;
        this.mEnable = z;
    }

    public SettingMenu(int i, int i2, int i3) {
        this.mEnable = true;
        this.mStateResId = i;
        this.mTitleResId = i2;
        this.mFlag = i3;
    }
}
