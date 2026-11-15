package com.transsion.vishaplayersdk.gsyplayer.video.controller.data;

public class OptionMenu {
    private int resId;
    private boolean selected;
    private int selectedResId;
    private String selectedTitle;
    private String selectedUrl;
    private int title;
    private int type;
    private String url;

    public OptionMenu(int i, int i2, int i3, int i4, boolean z) {
        this.type = i2;
        this.selectedResId = i4;
        this.resId = i3;
        this.title = i;
        this.selected = z;
    }

    public int getResId() {
        return this.resId;
    }

    public int getSelectedResId() {
        return this.selectedResId;
    }

    public String getSelectedUrl() {
        return this.selectedUrl;
    }

    public int getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setResId(int i) {
        this.resId = i;
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }

    public void setSelectedResId(int i) {
        this.selectedResId = i;
    }

    public void setSelectedUrl(String str) {
        this.selectedUrl = str;
    }

    public void setTitle(int i) {
        this.title = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
