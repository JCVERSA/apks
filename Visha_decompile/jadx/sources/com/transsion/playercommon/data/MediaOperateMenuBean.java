package com.transsion.playercommon.data;

public class MediaOperateMenuBean {
    public String description;
    public int flagId;
    public int iconResId;
    public boolean isEnable;
    public boolean isNeedPoint;
    private String mIconName;
    private boolean mNeedThemeColor;
    public String name;
    public boolean showDescription;

    public MediaOperateMenuBean(int i, String str) {
        this.isEnable = true;
        this.isNeedPoint = false;
        this.iconResId = i;
        this.name = str;
    }

    public String getIconName() {
        return this.mIconName;
    }

    public boolean isNeedThemeColor() {
        return this.mNeedThemeColor;
    }

    public void setNeedThemeColor(boolean z) {
        this.mNeedThemeColor = z;
    }

    public MediaOperateMenuBean(String str, String str2, int i) {
        this.isEnable = true;
        this.isNeedPoint = false;
        this.mIconName = str;
        this.name = str2;
        this.flagId = i;
    }

    public MediaOperateMenuBean(String str, String str2, boolean z, int i) {
        this.isEnable = true;
        this.mIconName = str;
        this.name = str2;
        this.flagId = i;
        this.isNeedPoint = z;
    }
}
