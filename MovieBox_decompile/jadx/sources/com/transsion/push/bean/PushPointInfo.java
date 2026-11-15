package com.transsion.push.bean;

public class PushPointInfo {
    public String evt;

    public int f48701id;

    public PushPointInfo(int i10, String str) {
        this.f48701id = i10;
        this.evt = str;
    }

    public String toString() {
        return "PushPointInfo{id=" + this.f48701id + ", evt='" + this.evt + "'}";
    }
}
