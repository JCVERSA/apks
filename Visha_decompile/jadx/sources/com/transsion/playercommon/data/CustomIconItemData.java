package com.transsion.playercommon.data;

public class CustomIconItemData {
    private int iconResId;
    private boolean iconVisible;
    private String text;
    private boolean textVisible;
    private final int type;

    public CustomIconItemData(int i, String str, boolean z, boolean z2, int i2) {
        this.iconResId = i;
        this.text = str;
        this.iconVisible = z;
        this.textVisible = z2;
        this.type = i2;
    }

    public int getIconResId() {
        return this.iconResId;
    }

    public String getText() {
        return this.text;
    }

    public int getType() {
        return this.type;
    }

    public boolean isIconVisible() {
        return this.iconVisible;
    }

    public boolean isTextVisible() {
        return this.textVisible;
    }
}
