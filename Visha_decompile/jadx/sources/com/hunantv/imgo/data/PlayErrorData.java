package com.hunantv.imgo.data;

import com.hunantv.imgo.b.c;
import com.hunantv.imgo.net.RequestParams;

public class PlayErrorData extends CommonData {
    private String cpn;
    private String isqs;
    private String lob;
    private String logtype;
    private String spec;
    private String sptype;
    private String suuid;
    private String vid;

    public PlayErrorData() {
        setBid(CommonData.BID_PLAY_ERROR);
        setLogtype("sperr");
        setCpn(c.a().a(false, true));
    }

    public String getCpn() {
        return this.cpn;
    }

    public String getIsqs() {
        return this.isqs;
    }

    public String getLob() {
        return this.lob;
    }

    public String getLogtype() {
        return this.logtype;
    }

    public RequestParams getRequestParams() {
        RequestParams requestParamsCreateBaseRequestParams = createBaseRequestParams();
        requestParamsCreateBaseRequestParams.put("logtype", this.logtype);
        requestParamsCreateBaseRequestParams.put("cpn", this.cpn);
        requestParamsCreateBaseRequestParams.put("sptype", this.sptype);
        requestParamsCreateBaseRequestParams.put("vid", this.vid);
        requestParamsCreateBaseRequestParams.put("isqs", this.isqs);
        requestParamsCreateBaseRequestParams.put("spec", this.spec);
        requestParamsCreateBaseRequestParams.put("lob", this.lob);
        requestParamsCreateBaseRequestParams.put("suuid", this.suuid);
        return requestParamsCreateBaseRequestParams;
    }

    public String getSpec() {
        return this.spec;
    }

    public String getSptype() {
        return this.sptype;
    }

    public String getSuuid() {
        return this.suuid;
    }

    public String getVid() {
        return this.vid;
    }

    public void setCpn(String str) {
        this.cpn = str;
    }

    public void setIsqs(String str) {
        this.isqs = str;
    }

    public void setLob(String str) {
        this.lob = str;
    }

    public void setLogtype(String str) {
        this.logtype = str;
    }

    public void setSpec(String str) {
        this.spec = str;
    }

    public void setSptype(String str) {
        this.sptype = str;
    }

    public void setSuuid(String str) {
        this.suuid = str;
    }

    public void setVid(String str) {
        this.vid = str;
    }
}
