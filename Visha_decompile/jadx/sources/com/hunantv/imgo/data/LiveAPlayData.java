package com.hunantv.imgo.data;

import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.hunantv.imgo.b.c;
import com.hunantv.imgo.net.RequestParams;

public class LiveAPlayData extends CommonData {
    private String abt;
    private int acp;
    private String act;
    private String activeid;
    private int ap;
    private String cpn;
    private int ct;
    private String datano;
    private int def;
    private int et;
    private String fpa;
    private String fpid;
    private String fpn;
    private int isad;
    private String lid;
    private String liveId;
    private String mdid;
    private int pay;
    private int pt;
    private String pver;
    private String ra;
    private String ref;
    private String refmdid;
    private int td;
    private String tk;
    private String url = "";
    private String cid = "";
    private String suuid = "";
    private String cdnip = "";
    private String idfa = "";

    public LiveAPlayData() {
        setSuuid(c.a().f);
        setRef("");
        setBid(CommonData.BID_LIVE_PLAY);
        setDatano("");
        setRefmdid("");
    }

    @Override
    public RequestParams createBaseRequestParams() {
        RequestParams requestParamsCreateBaseRequestParams = super.createBaseRequestParams();
        requestParamsCreateBaseRequestParams.put("liveId", this.liveId);
        requestParamsCreateBaseRequestParams.put("activeid", this.activeid);
        requestParamsCreateBaseRequestParams.put("pay", this.pay);
        requestParamsCreateBaseRequestParams.put("def", this.def);
        requestParamsCreateBaseRequestParams.put("fpn", this.fpn);
        requestParamsCreateBaseRequestParams.put("fpid", this.fpid);
        requestParamsCreateBaseRequestParams.put("ap", "0");
        requestParamsCreateBaseRequestParams.put("url", this.url);
        requestParamsCreateBaseRequestParams.put(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
        requestParamsCreateBaseRequestParams.put("pt", this.pt);
        requestParamsCreateBaseRequestParams.put("cpn", this.cpn);
        requestParamsCreateBaseRequestParams.put("act", this.act);
        requestParamsCreateBaseRequestParams.put("bid", this.bid);
        requestParamsCreateBaseRequestParams.put("ct", this.ct);
        requestParamsCreateBaseRequestParams.put("et", this.et);
        requestParamsCreateBaseRequestParams.put("td", this.td);
        requestParamsCreateBaseRequestParams.put("ra", this.ra);
        requestParamsCreateBaseRequestParams.put("ref", this.ref);
        requestParamsCreateBaseRequestParams.put("suuid", this.suuid);
        requestParamsCreateBaseRequestParams.put("lid", this.lid);
        requestParamsCreateBaseRequestParams.put("cdnip", this.cdnip);
        requestParamsCreateBaseRequestParams.put("idfa", this.idfa);
        requestParamsCreateBaseRequestParams.put("isad", this.isad);
        requestParamsCreateBaseRequestParams.put("fpa", this.fpa);
        requestParamsCreateBaseRequestParams.put("mdid", this.mdid);
        requestParamsCreateBaseRequestParams.put("refmdid", this.refmdid);
        requestParamsCreateBaseRequestParams.put("acp", this.acp);
        requestParamsCreateBaseRequestParams.put("abt", this.abt);
        requestParamsCreateBaseRequestParams.put("tk", this.tk);
        requestParamsCreateBaseRequestParams.put("pver", this.pver);
        requestParamsCreateBaseRequestParams.put("idx", "0");
        requestParamsCreateBaseRequestParams.put("isad", this.isad);
        return requestParamsCreateBaseRequestParams;
    }

    public String getAbt() {
        return this.abt;
    }

    public int getAcp() {
        return this.acp;
    }

    public String getAct() {
        return this.act;
    }

    @Override
    public String getBid() {
        return this.bid;
    }

    public String getCdnip() {
        return this.cdnip;
    }

    public String getCpn() {
        return this.cpn;
    }

    public int getCt() {
        return this.ct;
    }

    public String getDatano() {
        return this.datano;
    }

    public int getDef() {
        return this.def;
    }

    public int getEt() {
        return this.et;
    }

    public String getFpa() {
        return this.fpa;
    }

    public String getFpid() {
        return this.fpid;
    }

    public String getFpn() {
        return this.fpn;
    }

    public String getIdfa() {
        return this.idfa;
    }

    public int getIsad() {
        return this.isad;
    }

    public String getLid() {
        return this.lid;
    }

    public String getLiveId() {
        return this.liveId;
    }

    public String getMdid() {
        return this.mdid;
    }

    public int getPay() {
        return this.pay;
    }

    public int getPt() {
        return this.pt;
    }

    public String getRa() {
        return this.ra;
    }

    public String getRef() {
        return this.ref;
    }

    public String getRefmdid() {
        return this.refmdid;
    }

    public String getSuuid() {
        return this.suuid;
    }

    public int getTd() {
        return this.td;
    }

    public String getTk() {
        return this.tk;
    }

    public String getUrl() {
        return this.url;
    }

    public void setAbt(String str) {
        this.abt = str;
    }

    public void setAcp(int i) {
        this.acp = i;
    }

    public void setAct(String str) {
        this.act = str;
    }

    public void setActiveid(String str) {
        this.activeid = str;
    }

    @Override
    public void setBid(String str) {
        this.bid = str;
    }

    public void setCdnip(String str) {
        this.cdnip = str;
    }

    public void setCpn(String str) {
        this.cpn = str;
    }

    public void setCt(int i) {
        this.ct = i;
    }

    public void setDatano(String str) {
        this.datano = str;
        if (TextUtils.isEmpty(str)) {
            this.datano = "";
        }
    }

    public void setDef(int i) {
        this.def = i;
    }

    public void setEt(int i) {
        this.et = i;
    }

    public void setFpa(String str) {
        this.fpa = str;
    }

    public void setFpid(String str) {
        this.fpid = str;
    }

    public void setFpn(String str) {
        this.fpn = str;
    }

    public void setIdfa(String str) {
        this.idfa = str;
    }

    public void setIsad(int i) {
        this.isad = i;
    }

    public void setLid(String str) {
        this.lid = str;
    }

    public void setLiveId(String str) {
        this.liveId = str;
    }

    public void setMdid(String str) {
        this.mdid = str;
    }

    public void setPay(int i) {
        this.pay = i;
    }

    public void setPt(int i) {
        this.pt = i;
    }

    public void setRa(String str) {
        this.ra = str;
    }

    public void setRef(String str) {
        this.ref = str;
    }

    public void setRefmdid(String str) {
        this.refmdid = str;
        if (TextUtils.isEmpty(str)) {
            this.refmdid = "";
        }
    }

    public void setSuuid(String str) {
        this.suuid = str;
    }

    public void setTd(int i) {
        this.td = i;
    }

    public void setTk(String str) {
        this.tk = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
