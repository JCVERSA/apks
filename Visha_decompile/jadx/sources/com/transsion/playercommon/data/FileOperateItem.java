package com.transsion.playercommon.data;

public class FileOperateItem {
    private boolean enable;
    private int flag;
    private boolean hasSubPage;
    private int imageResId;
    private boolean isNeedPoint;
    private int mIconText;
    private String subTitle;
    private int textResId;

    public FileOperateItem(int i, int i2, int i3) {
        this.enable = true;
        this.hasSubPage = false;
        this.isNeedPoint = false;
        this.imageResId = i;
        this.textResId = i2;
        this.flag = i3;
    }

    public int getFlag() {
        return this.flag;
    }

    public int getIconText() {
        return this.mIconText;
    }

    public int getImageResId() {
        return this.imageResId;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public int getTextResId() {
        return this.textResId;
    }

    public boolean hasSubPage() {
        return this.hasSubPage;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public boolean isHasSubPage() {
        return this.hasSubPage;
    }

    public boolean isNeedPoint() {
        return this.isNeedPoint;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public void setFlag(int i) {
        this.flag = i;
    }

    public void setHasSubPage(boolean z) {
        this.hasSubPage = z;
    }

    public void setIconText(int i) {
        this.mIconText = i;
    }

    public void setImageResId(int i) {
        this.imageResId = i;
    }

    public void setSubTitle(String str) {
        this.subTitle = str;
    }

    public void setTextResId(int i) {
        this.textResId = i;
    }

    public FileOperateItem(int i, int i2, boolean z, int i3) {
        this.enable = true;
        this.hasSubPage = false;
        this.imageResId = i;
        this.textResId = i2;
        this.flag = i3;
        this.isNeedPoint = z;
    }

    public FileOperateItem(int i, int i2, int i3, boolean z) {
        this.hasSubPage = false;
        this.isNeedPoint = false;
        this.imageResId = i;
        this.textResId = i2;
        this.flag = i3;
        this.enable = z;
    }

    public FileOperateItem(int i, int i2, int i3, boolean z, boolean z2) {
        this.isNeedPoint = false;
        this.imageResId = i;
        this.textResId = i2;
        this.flag = i3;
        this.enable = z;
        this.hasSubPage = z2;
    }

    public FileOperateItem(int i, int i2, int i3, boolean z, boolean z2, String str) {
        this.isNeedPoint = false;
        this.imageResId = i;
        this.textResId = i2;
        this.flag = i3;
        this.enable = z;
        this.hasSubPage = z2;
        this.subTitle = str;
    }
}
