package com.mgmi.ssp;

public class TParams {
    private int activityId;
    private String adParams;
    private int camera_id;
    private int chid;
    private String from;
    private int hid;
    private boolean isNative;
    private int ispay;
    private int ispreview;
    private String nid;
    private int position;
    private int vid;
    public int vip;
    private int channellive = 0;
    private int ecpm = -1;
    private int w = -999;
    private int h = -999;

    public int getActivityId() {
        return this.activityId;
    }

    public String getAdParams() {
        return this.adParams;
    }

    public int getCamera_id() {
        return this.camera_id;
    }

    public int getChannellive() {
        return this.channellive;
    }

    public int getChid() {
        return this.chid;
    }

    public int getEcpm() {
        return this.ecpm;
    }

    public String getFrom() {
        return this.from;
    }

    public int getH() {
        return this.h;
    }

    public int getHid() {
        return this.hid;
    }

    public int getISVip() {
        return this.vip;
    }

    public int getIspay() {
        return this.ispay;
    }

    public int getIspreview() {
        return this.ispreview;
    }

    public String getNid() {
        return this.nid;
    }

    public int getPosition() {
        return this.position;
    }

    public int getVid() {
        return this.vid;
    }

    public int getW() {
        return this.w;
    }

    public boolean isNative() {
        return this.isNative;
    }

    public void setActivityId(int i) {
        this.activityId = i;
    }

    public void setAdParams(String str) {
        this.adParams = str;
    }

    public void setCamera_id(int i) {
        this.camera_id = i;
    }

    public void setChannellive(int i) {
        this.channellive = i;
    }

    public void setChid(int i) {
        this.chid = i;
    }

    public void setEcpm(int i) {
        this.ecpm = i;
    }

    public void setFrom(String str) {
        this.from = str;
    }

    public void setH(int i) {
        this.h = i;
    }

    public void setHid(int i) {
        this.hid = i;
    }

    public void setIspay(int i) {
        this.ispay = i;
    }

    public void setIsppreview(int i) {
        this.ispreview = i;
    }

    public void setNative(boolean z) {
        this.isNative = z;
    }

    public void setNid(String str) {
        this.nid = str;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public TParams setVid(int i) {
        this.vid = i;
        return this;
    }

    public void setW(int i) {
        this.w = i;
    }

    public TParams setisVip(int i) {
        this.vip = i;
        return this;
    }
}
