package com.transsion.tools.beans;

public class ThemeColor {
    public int colorRes;
    public String colorTheme;

    public ThemeColor(int i, String str) {
        this.colorRes = i;
        this.colorTheme = str;
    }

    public ThemeColor(int i) {
        this.colorRes = i;
    }
}
