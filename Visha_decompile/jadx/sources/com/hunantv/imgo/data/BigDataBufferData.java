package com.hunantv.imgo.data;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.hunantv.imgo.b.c;
import com.hunantv.imgo.net.RequestParams;

public class BigDataBufferData extends CommonData {
    private String act;
    private int bdid;
    private int bftype;
    private int bsid;
    private int cf;
    private int cpn;
    private int ct;
    private int def;
    private int idx;
    private int istry;
    private int pay;
    private int pt;
    private String suuid;
    private int td;
    private int vid;
    private int vts;
    private String cid = "";
    private String plid = "";
    private int ap = 1;

    public BigDataBufferData(String str, String str2, int i) {
        setAct("buffer");
        setBid("27.1.25");
        setSuuid(c.a().f);
        setPt(i);
    }

    public String getAct() {
        return this.act;
    }

    public int getAp() {
        return this.ap;
    }

    public int getBdid() {
        return this.bdid;
    }

    public int getBftype() {
        return this.bftype;
    }

    public int getBsid() {
        return this.bsid;
    }

    public int getCf() {
        return this.cf;
    }

    public String getCid() {
        return this.cid;
    }

    public int getCpn() {
        return this.cpn;
    }

    public int getCt() {
        return this.ct;
    }

    public int getDef() {
        return this.def;
    }

    public int getIdx() {
        return this.idx;
    }

    public int getIstry() {
        return this.istry;
    }

    public int getPay() {
        return this.pay;
    }

    public String getPlid() {
        return this.plid;
    }

    public int getPt() {
        return this.pt;
    }

    public RequestParams getRequestParams(Context context) {
        RequestParams requestParamsCreateBaseRequestParams = createBaseRequestParams();
        requestParamsCreateBaseRequestParams.put("rdc", this.rdc);
        requestParamsCreateBaseRequestParams.put("rch", this.rch);
        requestParamsCreateBaseRequestParams.put("pay", this.pay);
        requestParamsCreateBaseRequestParams.put("def", this.def);
        requestParamsCreateBaseRequestParams.put("act", this.act);
        requestParamsCreateBaseRequestParams.put("vid", this.vid);
        requestParamsCreateBaseRequestParams.put("plid", this.plid);
        requestParamsCreateBaseRequestParams.put("ct", this.ct);
        requestParamsCreateBaseRequestParams.put(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
        requestParamsCreateBaseRequestParams.put("idx", this.idx);
        requestParamsCreateBaseRequestParams.put("istry", this.istry);
        requestParamsCreateBaseRequestParams.put("pt", this.pt);
        requestParamsCreateBaseRequestParams.put("cf", this.cf);
        requestParamsCreateBaseRequestParams.put("vts", this.vts);
        requestParamsCreateBaseRequestParams.put("bdid", this.bdid);
        requestParamsCreateBaseRequestParams.put("ap", this.ap);
        requestParamsCreateBaseRequestParams.put("td", this.td);
        requestParamsCreateBaseRequestParams.put("bftype", this.bftype);
        requestParamsCreateBaseRequestParams.put("suuid", this.suuid);
        requestParamsCreateBaseRequestParams.put("bsid", this.bsid);
        requestParamsCreateBaseRequestParams.put("cpn", this.cpn);
        return requestParamsCreateBaseRequestParams;
    }

    public String getSuuid() {
        return this.suuid;
    }

    public int getTd() {
        return this.td;
    }

    public int getVid() {
        return this.vid;
    }

    public int getVts() {
        return this.vts;
    }

    public void setAct(String str) {
        this.act = str;
    }

    public void setAp(int i) {
        this.ap = i;
    }

    public void setBdid(int i) {
        this.bdid = i;
    }

    public void setBftype(int i) {
        this.bftype = i;
    }

    public void setBsid(int i) {
        this.bsid = i;
    }

    public void setCf(int i) {
        this.cf = i;
    }

    public void setCid(String str) {
        this.cid = str;
    }

    public void setCpn(int i) {
        this.cpn = i;
    }

    public void setCt(int i) {
        this.ct = i;
    }

    public void setDef(int i) {
        this.def = i;
    }

    public void setIdx(int i) {
        this.idx = i;
    }

    public void setIstry(int i) {
        this.istry = i;
    }

    public void setPay(int i) {
        this.pay = i;
    }

    public void setPlid(String str) {
        this.plid = str;
    }

    public void setPt(int i) {
        this.pt = i;
    }

    public void setSuuid(String str) {
        this.suuid = str;
    }

    public void setTd(int i) {
        this.td = i;
    }

    public void setVid(int i) {
        this.vid = i;
    }

    public void setVts(int i) {
        this.vts = i;
    }
}
