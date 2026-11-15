package com.mgmi.model;

import java.io.Serializable;

public class PointsBean implements com.mgadplus.netlib.json.a, Serializable {
    private float confVal;
    private int playTime;
    private int time;

    public float getConfVal() {
        return this.confVal;
    }

    public int getPlayTime() {
        return this.playTime;
    }

    public int getTime() {
        return this.time;
    }

    public void setConfVal(float f) {
        this.confVal = f;
    }

    public void setPlayTime(int i) {
        this.playTime = i;
    }

    public void setTime(int i) {
        this.time = i;
    }
}
