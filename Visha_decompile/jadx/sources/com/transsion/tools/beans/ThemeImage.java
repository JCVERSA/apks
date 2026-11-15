package com.transsion.tools.beans;

public class ThemeImage {
    public String imageUri;
    public boolean isDefault;
    public int mergeResId;
    public String originImageUri;
    public int resId;
    public int thumbType;

    public ThemeImage(int i, boolean z) {
        this.resId = i;
        this.isDefault = z;
    }

    public ThemeImage(int i, int i2, boolean z) {
        this.resId = i;
        this.isDefault = z;
        this.mergeResId = i2;
    }

    public ThemeImage(int i, boolean z, int i2) {
        this.resId = i;
        this.isDefault = z;
        this.thumbType = i2;
    }

    public ThemeImage() {
    }
}
