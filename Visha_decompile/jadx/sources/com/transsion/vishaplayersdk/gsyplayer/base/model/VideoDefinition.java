package com.transsion.vishaplayersdk.gsyplayer.base.model;

import androidx.annotation.NonNull;

public class VideoDefinition {
    public static final int DEFINITION_4K = 9;
    public static final int DEFINITION_BLUE = 4;
    public static final int DEFINITION_COPY = 6;
    public static final int DEFINITION_FLOW = 0;
    public static final int DEFINITION_HDR = 7;
    public static final int DEFINITION_HIGH = 2;
    public static final int DEFINITION_NORMAL = 1;
    public static final int DEFINITION_PANS = 5;
    public static final int DEFINITION_SUPER = 3;
    public boolean bCurrent = false;
    private boolean bNeedVip;
    public String name;
    public int type;

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
    }

    public boolean isNeedVip() {
        return this.bNeedVip;
    }

    public boolean isbCurrent() {
        return this.bCurrent;
    }

    public void setCurrent(boolean z) {
        this.bCurrent = z;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNeedVip(boolean z) {
        this.bNeedVip = z;
    }

    public void setType(int i) {
        this.type = i;
    }

    @NonNull
    public String toString() {
        return "VideoDefinition{type=" + this.type + ", name='" + this.name + "', bNeedVip=" + this.bNeedVip + ", bCurrent=" + this.bCurrent + '}';
    }
}
