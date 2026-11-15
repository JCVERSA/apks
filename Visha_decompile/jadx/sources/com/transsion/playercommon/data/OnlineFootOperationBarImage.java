package com.transsion.playercommon.data;

public class OnlineFootOperationBarImage {
    public int placeHolderNormalResId;
    public int placeHolderSelectResId;
    public String selectedUrl;
    public String title;
    public String unselectedDarkUrl;
    public String unselectedUrl;

    public OnlineFootOperationBarImage(String str, String str2, String str3, String str4) {
        this.unselectedUrl = str;
        this.unselectedDarkUrl = str2;
        this.selectedUrl = str3;
        this.title = str4;
    }

    public OnlineFootOperationBarImage(String str, String str2, String str3, String str4, int i) {
        this.unselectedUrl = str;
        this.unselectedDarkUrl = str2;
        this.selectedUrl = str3;
        this.title = str4;
        this.placeHolderNormalResId = i;
    }

    public OnlineFootOperationBarImage(String str, String str2, String str3, String str4, int i, int i2) {
        this.unselectedUrl = str;
        this.unselectedDarkUrl = str2;
        this.selectedUrl = str3;
        this.title = str4;
        this.placeHolderNormalResId = i;
        this.placeHolderSelectResId = i2;
    }

    public OnlineFootOperationBarImage(String str, String str2) {
        this.unselectedUrl = str;
        this.title = str2;
    }

    public OnlineFootOperationBarImage(String str, String str2, int i) {
        this.unselectedUrl = str;
        this.title = str2;
        this.placeHolderNormalResId = i;
    }
}
