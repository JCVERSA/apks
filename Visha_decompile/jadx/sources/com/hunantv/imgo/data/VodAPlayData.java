package com.hunantv.imgo.data;

import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.hunantv.imgo.b.c;
import com.hunantv.imgo.net.RequestParams;

public class VodAPlayData extends CommonData {
    private String abt;
    private int acp;
    private String act;
    private String adt;
    private int ap;
    private String bdid;
    private String bsid;
    private String cdtp;
    private String cpn;
    private int ct;
    private String datano;
    private int def;
    private int et;
    private String firstt;
    private String fpa;
    private String fpid;
    private String fpn;
    private String hsumt;
    private int isad;
    private String isaps;
    private String isftm;
    private String isqs;
    private String isqst;
    private int istry;
    private String lid;
    private String mdid;
    private String mp;
    private String p2pt;
    private int pay;
    private String pret;
    private int pt;
    private String ra;
    private String ref;
    private String refmdid;
    private String sobody;
    private String sumt;
    private int td;
    private String threet;
    private String tid;
    private String tk;
    private String twot;
    private String vid;
    private String url = "";
    private String cid = "";
    private int idx = 0;
    private String suuid = "";
    private String plid = "";
    private String cdnip = "";
    private String idfa = "";

    public VodAPlayData() {
        setSuuid(c.a().f);
        setRef("");
        setBid(CommonData.BID_PLAY);
        setDatano("");
        setRefmdid("");
    }

    @Override
    public RequestParams createBaseRequestParams() {
        RequestParams requestParamsCreateBaseRequestParams = super.createBaseRequestParams();
        requestParamsCreateBaseRequestParams.put("pay", this.pay);
        requestParamsCreateBaseRequestParams.put("def", this.def);
        requestParamsCreateBaseRequestParams.put("fpn", this.fpn);
        requestParamsCreateBaseRequestParams.put("fpid", this.fpid);
        requestParamsCreateBaseRequestParams.put("ap", this.ap);
        requestParamsCreateBaseRequestParams.put("url", this.url);
        requestParamsCreateBaseRequestParams.put(CmcdConfiguration.KEY_CONTENT_ID, this.cid);
        requestParamsCreateBaseRequestParams.put("pt", this.pt);
        requestParamsCreateBaseRequestParams.put("bdid", this.bdid);
        requestParamsCreateBaseRequestParams.put("bsid", this.bsid);
        requestParamsCreateBaseRequestParams.put("cpn", this.cpn);
        requestParamsCreateBaseRequestParams.put("act", this.act);
        requestParamsCreateBaseRequestParams.put("bid", this.bid);
        requestParamsCreateBaseRequestParams.put("idx", this.idx);
        requestParamsCreateBaseRequestParams.put("ct", this.ct);
        requestParamsCreateBaseRequestParams.put("et", this.et);
        requestParamsCreateBaseRequestParams.put("td", this.td);
        requestParamsCreateBaseRequestParams.put("ra", this.ra);
        requestParamsCreateBaseRequestParams.put("ref", this.ref);
        requestParamsCreateBaseRequestParams.put("suuid", this.suuid);
        requestParamsCreateBaseRequestParams.put("vid", this.vid);
        requestParamsCreateBaseRequestParams.put("plid", this.plid);
        requestParamsCreateBaseRequestParams.put("tid", this.tid);
        requestParamsCreateBaseRequestParams.put("lid", this.lid);
        requestParamsCreateBaseRequestParams.put("istry", this.istry);
        requestParamsCreateBaseRequestParams.put("cdnip", this.cdnip);
        requestParamsCreateBaseRequestParams.put("idfa", this.idfa);
        requestParamsCreateBaseRequestParams.put("isad", this.isad);
        requestParamsCreateBaseRequestParams.put("fpa", this.fpa);
        requestParamsCreateBaseRequestParams.put("mdid", this.mdid);
        requestParamsCreateBaseRequestParams.put("refmdid", this.refmdid);
        requestParamsCreateBaseRequestParams.put("acp", this.acp);
        requestParamsCreateBaseRequestParams.put("abt", this.abt);
        requestParamsCreateBaseRequestParams.put("tk", this.tk);
        requestParamsCreateBaseRequestParams.put("sobody", this.sobody);
        requestParamsCreateBaseRequestParams.put("sumt", this.sumt);
        requestParamsCreateBaseRequestParams.put("firstt", this.firstt);
        requestParamsCreateBaseRequestParams.put("adt", this.adt);
        requestParamsCreateBaseRequestParams.put("twot", this.twot);
        requestParamsCreateBaseRequestParams.put("threet", this.threet);
        requestParamsCreateBaseRequestParams.put("pret", this.pret);
        requestParamsCreateBaseRequestParams.put("isftm", this.isftm);
        requestParamsCreateBaseRequestParams.put("isqs", this.isqs);
        requestParamsCreateBaseRequestParams.put("isqst", this.isqst);
        requestParamsCreateBaseRequestParams.put("cdtp", this.cdtp);
        requestParamsCreateBaseRequestParams.put("isaps", this.isaps);
        requestParamsCreateBaseRequestParams.put("p2pt", this.p2pt);
        requestParamsCreateBaseRequestParams.put("hsumt", this.hsumt);
        requestParamsCreateBaseRequestParams.put("mp", this.mp);
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

    public int getAp() {
        return this.ap;
    }

    public String getBdid() {
        return this.bdid;
    }

    @Override
    public String getBid() {
        return this.bid;
    }

    public String getBsid() {
        return this.bsid;
    }

    public String getCdnip() {
        return this.cdnip;
    }

    public String getCid() {
        return this.cid;
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

    public String getHsumt() {
        return this.hsumt;
    }

    public String getIdfa() {
        return this.idfa;
    }

    public int getIdx() {
        return this.idx;
    }

    public int getIsad() {
        return this.isad;
    }

    public int getIstry() {
        return this.istry;
    }

    public String getLid() {
        return this.lid;
    }

    public String getMdid() {
        return this.mdid;
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

    public String getRa() {
        return this.ra;
    }

    public String getRef() {
        return this.ref;
    }

    public String getRefmdid() {
        return this.refmdid;
    }

    public String getSobody() {
        return this.sobody;
    }

    public String getSumt() {
        return this.sumt;
    }

    public String getSuuid() {
        return this.suuid;
    }

    public int getTd() {
        return this.td;
    }

    public String getTid() {
        return this.tid;
    }

    public String getTk() {
        return this.tk;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVid() {
        return this.vid;
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

    public void setAdt(String str) {
        this.adt = str;
    }

    public void setAp(int i) {
        this.ap = i;
    }

    public void setBdid(String str) {
        this.bdid = str;
    }

    @Override
    public void setBid(String str) {
        this.bid = str;
    }

    public void setBsid(String str) {
        this.bsid = str;
    }

    public void setCdnip(String str) {
        this.cdnip = str;
    }

    public void setCdtp(String str) {
        this.cdtp = str;
    }

    public void setCid(String str) {
        this.cid = str;
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

    public void setFirstt(String str) {
        this.firstt = str;
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

    public void setHsumt(String str) {
        this.hsumt = str;
    }

    public void setIdfa(String str) {
        this.idfa = str;
    }

    public void setIdx(int i) {
        this.idx = i;
    }

    public void setIsad(int i) {
        this.isad = i;
    }

    public void setIsaps(String str) {
        this.isaps = str;
    }

    public void setIsftm(String str) {
        this.isftm = str;
    }

    public void setIsqs(String str) {
        this.isqs = str;
    }

    public void setIsqst(String str) {
        this.isqst = str;
    }

    public void setIstry(int i) {
        this.istry = i;
    }

    public void setLid(String str) {
        this.lid = str;
    }

    public void setMdid(String str) {
        this.mdid = str;
    }

    public void setMp(String str) {
        this.mp = str;
    }

    public void setP2pt(String str) {
        this.p2pt = str;
    }

    public void setPay(int i) {
        this.pay = i;
    }

    public void setPlid(String str) {
        this.plid = str;
    }

    public void setPret(String str) {
        this.pret = str;
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

    public void setSobody(String str) {
        this.sobody = str;
    }

    public void setSumt(String str) {
        this.sumt = str;
    }

    public void setSuuid(String str) {
        this.suuid = str;
    }

    public void setTd(int i) {
        this.td = i;
    }

    public void setThreet(String str) {
        this.threet = str;
    }

    public void setTid(String str) {
        this.tid = str;
    }

    public void setTk(String str) {
        this.tk = str;
    }

    public void setTwot(String str) {
        this.twot = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVid(String str) {
        this.vid = str;
    }
}
