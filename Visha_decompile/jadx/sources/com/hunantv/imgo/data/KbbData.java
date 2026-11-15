package com.hunantv.imgo.data;

import com.hunantv.imgo.util.f;
import com.hunantv.imgo.util.p;
import com.mgtv.json.JsonInterface;

public class KbbData implements JsonInterface {
    private String $channel;
    private int abroad;
    private String act;
    private String aver;
    private String bid;
    private String ch;
    private String did;
    private String idx;
    private String mf;
    private String mod;

    private int f14net;
    private String oaid;
    private String src;
    private String suuid;
    private String sver;
    private String time;

    public KbbData(String str, String str2) {
        this.idx = str;
        this.suuid = str2;
        this.act = "cp1";
        this.did = com.hunantv.imgo.util.b.t();
        this.mod = com.hunantv.imgo.util.b.p();
        this.mf = com.hunantv.imgo.util.b.s();
        this.aver = com.hunantv.imgo.util.b.h();
        this.sver = com.hunantv.imgo.util.b.r();
        this.ch = com.hunantv.imgo.util.b.x();
        this.f14net = p.d();
        this.time = f.b(System.currentTimeMillis());
        this.src = com.hunantv.imgo.util.b.O();
        this.abroad = com.hunantv.imgo.b.a.a();
        this.bid = CommonData.BID_KBB;
        this.$channel = com.hunantv.imgo.util.b.z();
        this.oaid = com.hunantv.imgo.util.b.U();
    }

    public int getAbroad() {
        return this.abroad;
    }

    public String getAct() {
        return this.act;
    }

    public String getAver() {
        return this.aver;
    }

    public String getCh() {
        return this.ch;
    }

    public String getDid() {
        return this.did;
    }

    public String getIdx() {
        return this.idx;
    }

    public String getMf() {
        return this.mf;
    }

    public String getMod() {
        return this.mod;
    }

    public int getNet() {
        return this.f14net;
    }

    public String getSrc() {
        return this.src;
    }

    public String getSuuid() {
        return this.suuid;
    }

    public String getSver() {
        return this.sver;
    }

    public String getTime() {
        return this.time;
    }

    public void setAbroad(int i) {
        this.abroad = i;
    }

    public void setAct(String str) {
        this.act = str;
    }

    public void setAver(String str) {
        this.aver = str;
    }

    public void setCh(String str) {
        this.ch = str;
    }

    public void setDid(String str) {
        this.did = str;
    }

    public void setIdx(String str) {
        this.idx = str;
    }

    public void setMf(String str) {
        this.mf = str;
    }

    public void setMod(String str) {
        this.mod = str;
    }

    public void setNet(int i) {
        this.f14net = i;
    }

    public void setSrc(String str) {
        this.src = str;
    }

    public void setSuuid(String str) {
        this.suuid = str;
    }

    public void setSver(String str) {
        this.sver = str;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public String toString() {
        return com.mgtv.json.a.a(this, (Class<? extends KbbData>) KbbData.class);
    }

    public KbbData(String str, String str2, String str3) {
        this.idx = str;
        this.suuid = str2;
        this.act = str3;
        this.bid = CommonData.BID_KBB;
        this.did = com.hunantv.imgo.util.b.t();
        this.mod = com.hunantv.imgo.util.b.p();
        this.mf = com.hunantv.imgo.util.b.s();
        this.aver = com.hunantv.imgo.util.b.h();
        this.sver = com.hunantv.imgo.util.b.r();
        this.ch = com.hunantv.imgo.util.b.x();
        this.f14net = p.d();
        this.time = f.b(System.currentTimeMillis());
        this.src = com.hunantv.imgo.util.b.O();
        this.abroad = com.hunantv.imgo.b.a.a();
        this.oaid = com.hunantv.imgo.util.b.U();
    }
}
