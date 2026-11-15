package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import java.io.Serializable;

public class ThemeData implements Serializable {
    public static final int CUSTOM_BACKGROUND_THEME = 0;
    public static final int CUSTOM_BLACK_THEME = 2;
    public static final int CUSTOM_WHITE_THEME = 1;
    private static final long serialVersionUID = -294814458587754564L;
    public int backgroundType;
    public int blur;
    public int darkMode;
    public String description;
    public int frameType;
    public int imageMenu;
    public String name;
    public int opacity;
    public String path;
    public String tabPath;
    public String thumbPath;
    public int thumbType;

    public ThemeData() {
        this.backgroundType = 2;
        this.thumbType = 1;
    }

    @NonNull
    public String toString() {
        return "ThemeData{name=" + this.name + ", path=" + this.path + ", description=" + this.description + '}';
    }

    public ThemeData(String str, String str2, int i, String str3) {
        this.backgroundType = 2;
        this.path = str;
        this.description = str2;
        this.thumbType = i;
        this.thumbPath = str3;
    }

    public ThemeData(String str, String str2, String str3) {
        this.backgroundType = 2;
        this.thumbType = 1;
        this.name = str;
        this.path = str2;
        this.description = str3;
    }

    public ThemeData(String str, int i, String str2) {
        this.backgroundType = 2;
        this.thumbType = 1;
        this.name = str;
        this.imageMenu = i;
        this.description = str2;
    }

    public ThemeData(String str) {
        this.backgroundType = 2;
        this.thumbType = 1;
        this.name = str;
    }
}
