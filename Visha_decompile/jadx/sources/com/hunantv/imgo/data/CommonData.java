package com.hunantv.imgo.data;

import com.hunantv.imgo.a.h;
import com.hunantv.imgo.b.c;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.d;
import com.hunantv.imgo.util.f;
import com.hunantv.imgo.util.m;
import com.hunantv.imgo.util.p;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.json.JsonInterface;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;

public class CommonData implements JsonInterface {
    public static final String BID_APPLIST = "27.9.1";
    public static final String BID_BUFFER = "27.1.25";
    public static final String BID_CLICK = "27.5.5.5";
    public static final String BID_HEARTBEAT = "27.1.25";
    public static final String BID_KBB = "27.1.90";
    public static final String BID_LIVE_PLAY = "27.1.1.1";
    public static final String BID_PLAY = "27.1.1.0";
    public static final String BID_PLAY_ERROR = "27.4.2";
    public static final String BID_PV_SOURCE = "27.1.2";
    public static final String BID_WIFI = "27.9.2";
    protected String abroad;
    protected String aver;
    protected String bid;
    protected String ch;
    protected String did;
    protected String gps;
    protected String guid;
    protected String imei;
    protected String mac;

    protected int f13net;
    protected int p2p;
    protected String rch;
    protected String rdc;
    protected String runsid;
    protected String sid;
    protected String src;
    protected String sver;
    protected String uuid;
    protected int uvip;
    protected String time = f.b(System.currentTimeMillis());
    protected int isdebug = 0;
    protected String mf = com.hunantv.imgo.util.b.s();
    protected String mod = com.hunantv.imgo.util.b.p();
    protected String channel = "union_app";

    public CommonData() {
        setTime(f.b(System.currentTimeMillis()));
        setGuid(com.hunantv.imgo.util.b.K());
        setDid(com.hunantv.imgo.util.b.t());
        setUuid(com.hunantv.imgo.util.b.n());
        setSid(h.e());
        setNet(p.d());
        setIsdebug(PreferencesUtil.b("TAG_D", false) ? 1 : 0);
        setMf(com.hunantv.imgo.util.b.s());
        setMod(com.hunantv.imgo.util.b.p());
        setSver(com.hunantv.imgo.util.b.r());
        setAver(com.hunantv.imgo.util.b.h());
        setGps(m.a().b());
        setCh(com.hunantv.imgo.util.b.x());
        setImei(com.hunantv.imgo.util.b.k());
        setMac(com.hunantv.imgo.util.b.v());
        setUvip(a.a().b() ? 1 : 0);
        setAbroad(com.hunantv.imgo.b.a.b());
        setP2p(d.a ? 1 : 0);
        setRunsid(c.a().g);
        setSrc(com.hunantv.imgo.util.b.O());
    }

    public RequestParams createBaseRequestParams() {
        RequestParams requestParams = new RequestParams();
        requestParams.put("time", this.time);
        requestParams.put("uuid", this.uuid);
        requestParams.put(DownloadFacadeEnum.USER_CH, this.ch);
        requestParams.put(DownloadFacadeEnum.USER_DID, this.did);
        requestParams.put(DownloadFacadeEnum.USER_MOD, this.mod);
        requestParams.put(DownloadFacadeEnum.USER_MF, this.mf);
        requestParams.put(DownloadFacadeEnum.USER_AVER, this.aver);
        requestParams.put(DownloadFacadeEnum.USER_SVER, this.sver);
        requestParams.put(DownloadFacadeEnum.USER_IMEI, this.imei);
        requestParams.put("rdc", this.rdc);
        requestParams.put("rch", this.rch);
        requestParams.put("uvip", this.uvip);
        requestParams.put(DownloadFacadeEnum.USER_GUID, this.guid);
        requestParams.put("sid", this.sid);
        requestParams.put(DownloadFacadeEnum.USER_NET, this.f13net);
        requestParams.put(DownloadFacadeEnum.USER_ISDEBUG, this.isdebug);
        requestParams.put(DownloadFacadeEnum.USER_GPS, this.gps);
        requestParams.put(DownloadFacadeEnum.USER_MAC, this.mac);
        requestParams.put("uvip", this.uvip);
        requestParams.put("abroad", com.hunantv.imgo.b.a.a());
        requestParams.put("runsid", this.runsid);
        requestParams.put("p2p", this.p2p);
        requestParams.put("src", this.src);
        requestParams.put("bid", this.bid);
        requestParams.put(CommonUrlParts.HUAWEI_OAID, com.hunantv.imgo.util.b.U());
        requestParams.put("$channel", com.hunantv.imgo.util.b.z());
        return requestParams;
    }

    public String getAbroad() {
        return this.abroad;
    }

    public String getAver() {
        return this.aver;
    }

    public String getBid() {
        return this.bid;
    }

    public String getCh() {
        return this.ch;
    }

    public String getDid() {
        return this.did;
    }

    public String getGps() {
        return this.gps;
    }

    public String getGuid() {
        return this.guid;
    }

    public String getImei() {
        return this.imei;
    }

    public int getIsdebug() {
        return this.isdebug;
    }

    public String getMac() {
        return this.mac;
    }

    public String getMf() {
        return this.mf;
    }

    public String getMod() {
        return this.mod;
    }

    public int getNet() {
        return this.f13net;
    }

    public int getP2p() {
        return this.p2p;
    }

    public String getRch() {
        return this.rch;
    }

    public String getRdc() {
        return this.rdc;
    }

    public String getRunsid() {
        return this.runsid;
    }

    public String getSid() {
        return this.sid;
    }

    public String getSrc() {
        return this.src;
    }

    public String getSver() {
        return this.sver;
    }

    public String getTime() {
        return this.time;
    }

    public String getUuid() {
        return this.uuid;
    }

    public int getUvip() {
        return this.uvip;
    }

    public void setAbroad(String str) {
        this.abroad = str;
    }

    public void setAver(String str) {
        this.aver = str;
    }

    public void setBid(String str) {
        this.bid = str;
    }

    public void setCh(String str) {
        this.ch = str;
    }

    public void setDid(String str) {
        this.did = str;
    }

    public void setGps(String str) {
        this.gps = str;
    }

    public void setGuid(String str) {
        this.guid = str;
    }

    public void setImei(String str) {
        this.imei = str;
    }

    public void setIsdebug(int i) {
        this.isdebug = i;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setMf(String str) {
        this.mf = str;
    }

    public void setMod(String str) {
        this.mod = str;
    }

    public void setNet(int i) {
        this.f13net = i;
    }

    public void setP2p(int i) {
        this.p2p = i;
    }

    public void setRch(String str) {
        this.rch = str;
    }

    public void setRdc(String str) {
        this.rdc = str;
    }

    public void setRunsid(String str) {
        this.runsid = str;
    }

    public void setSid(String str) {
        this.sid = str;
    }

    public void setSrc(String str) {
        this.src = str;
    }

    public void setSver(String str) {
        this.sver = str;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setUvip(int i) {
        this.uvip = i;
    }
}
