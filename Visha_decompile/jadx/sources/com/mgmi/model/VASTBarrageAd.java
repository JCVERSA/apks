package com.mgmi.model;

import android.text.TextUtils;

public class VASTBarrageAd extends VASTAd {
    private int mBgColor = 255;
    private boolean interact = false;

    public int getBgColor() {
        return this.mBgColor;
    }

    public boolean getInteract() {
        return this.interact;
    }

    public void setBgColor(int i) {
        this.mBgColor = i;
    }

    public void setInteract(String str) {
        if (TextUtils.isEmpty(str) || !str.equals("12")) {
            this.interact = false;
        } else {
            this.interact = true;
        }
    }
}
