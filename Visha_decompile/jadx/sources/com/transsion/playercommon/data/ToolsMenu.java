package com.transsion.playercommon.data;

public class ToolsMenu {
    public int flag;
    public int imageViewResId;
    public boolean showName;
    public boolean showVersion = false;
    public int textViewResId;
    public String toolName;
    public String versionName;

    public ToolsMenu() {
    }

    public ToolsMenu(int i, int i2, int i3) {
        this.imageViewResId = i;
        this.textViewResId = i2;
        this.flag = i3;
    }

    public ToolsMenu(int i, String str, int i2) {
        this.imageViewResId = i;
        this.toolName = str;
        this.flag = i2;
    }
}
