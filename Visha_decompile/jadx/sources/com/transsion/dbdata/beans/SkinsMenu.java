package com.transsion.dbdata.beans;

import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;

public class SkinsMenu implements Serializable {
    public static final String TAG_BACKGROUND = "background";
    public static final String TAG_BASICCOLOR = "basicColor";
    public static final String TAG_DARK_MODE = "dark_mode";
    public static final String TAG_DESCRIPTION = "description";
    public static final String TAG_DETAILPATH = "detailPath";
    public static final String TAG_IMAGE_MENU = "image_menu";
    public static final String TAG_IMAGE_PREVIEW = "image_preview";
    public static final String TAG_NAME = "name";
    public static final String TAG_THUNMNAILPATH = "thumbnailPath";
    public static final String TAG_WINDOW_BACKGROUND = "window_background";
    private static final long serialVersionUID = 761755194732786723L;
    public int background;
    public int backgroundType;
    public int basicColor;

    @SerializedName("skin_mode")
    public int darkMode;

    @SerializedName("color")
    public String description;

    @SerializedName("original_icon")
    public String detailPath;
    public int imageMenu;
    public int imagePreview;
    public boolean isSelected;

    @SerializedName("name")
    public String name;
    public String showName;

    @SerializedName("sort")
    public int sort;
    public String thumbPath;
    public int thumbType;

    @SerializedName("abbreviation_icon")
    public String thumbnailPath;
    public int windowBackground;

    public SkinsMenu() {
        this.thumbType = 1;
        this.basicColor = -1;
    }

    public static SkinsMenu restore(Intent intent) {
        SkinsMenu skinsMenu = new SkinsMenu();
        skinsMenu.imageMenu = intent.getIntExtra(TAG_IMAGE_MENU, 0);
        skinsMenu.imagePreview = intent.getIntExtra(TAG_IMAGE_PREVIEW, 0);
        skinsMenu.name = intent.getStringExtra("name");
        skinsMenu.background = intent.getIntExtra("background", 0);
        skinsMenu.description = intent.getStringExtra("description");
        skinsMenu.thumbnailPath = intent.getStringExtra(TAG_THUNMNAILPATH);
        skinsMenu.detailPath = intent.getStringExtra(TAG_DETAILPATH);
        skinsMenu.basicColor = intent.getIntExtra(TAG_BASICCOLOR, -1);
        skinsMenu.windowBackground = intent.getIntExtra(TAG_WINDOW_BACKGROUND, -1);
        skinsMenu.darkMode = intent.getIntExtra(TAG_DARK_MODE, 0);
        return skinsMenu;
    }

    public boolean isDarkTheme() {
        return this.darkMode == 0;
    }

    public boolean isLocalTheme() {
        return this.thumbnailPath == null && this.backgroundType == 0;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setSelected(boolean z) {
        this.isSelected = z;
    }

    public void toIntent(Intent intent) {
        intent.putExtra(TAG_IMAGE_MENU, this.imageMenu);
        intent.putExtra(TAG_IMAGE_PREVIEW, this.imagePreview);
        intent.putExtra("name", this.name);
        intent.putExtra("background", this.background);
        intent.putExtra("description", this.description);
        intent.putExtra(TAG_THUNMNAILPATH, this.thumbnailPath);
        intent.putExtra(TAG_DETAILPATH, this.detailPath);
        intent.putExtra(TAG_BASICCOLOR, this.basicColor);
    }

    @NonNull
    public String toString() {
        return "skinsMenu{imageMenu=" + this.imageMenu + ", imagePreview=" + this.imagePreview + ", name='" + this.name + "', background='" + this.background + "', description=" + this.description + ", thumbnailPath='" + this.thumbnailPath + "', detailPath='" + this.detailPath + "', windowBackground='" + this.windowBackground + "', darkmode='" + this.darkMode + "', backgroundType='" + this.backgroundType + "'}";
    }

    public SkinsMenu(String str) {
        this.thumbType = 1;
        this.name = str;
        this.basicColor = -1;
    }

    public SkinsMenu(int i, int i2, String str, int i3, int i4) {
        this(i, i2, str, i3, i4, 0);
    }

    public SkinsMenu(int i, int i2, String str, int i3, int i4, int i5) {
        this.thumbType = 1;
        this.imageMenu = i;
        this.imagePreview = i2;
        this.name = str;
        this.windowBackground = i3;
        this.basicColor = i4;
        this.darkMode = i5;
    }

    public SkinsMenu(int i, int i2, String str, String str2) {
        this.thumbType = 1;
        this.imageMenu = i;
        this.imagePreview = i2;
        this.name = str;
        this.showName = str2;
        this.basicColor = -1;
    }
}
