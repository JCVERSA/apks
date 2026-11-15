package com.hunantv.imgo.data;

import androidx.annotation.NonNull;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.util.u;
import org.mozilla.javascript.ES6Iterator;

public class EventClickData extends CommonData {
    private String act;
    private String cpid;
    private String cpn;
    private String pos;
    private int rtime;
    private String suuid;
    private String value;

    public EventClickData(String str, String str2, String str3, String str4, String str5) {
        this.suuid = str;
        this.act = str2;
        this.pos = str3;
        this.value = str4;
        this.cpn = str5;
        setBid(CommonData.BID_CLICK);
    }

    @NonNull
    public RequestParams createRequestParams() {
        RequestParams requestParamsCreateBaseRequestParams = createBaseRequestParams();
        requestParamsCreateBaseRequestParams.put("cpid", this.cpid);
        requestParamsCreateBaseRequestParams.put("cpn", this.cpn);
        requestParamsCreateBaseRequestParams.put("act", this.act);
        requestParamsCreateBaseRequestParams.put("pos", this.pos);
        requestParamsCreateBaseRequestParams.put(ES6Iterator.VALUE_PROPERTY, u.a((Object) this.value));
        return requestParamsCreateBaseRequestParams;
    }

    public String getAct() {
        return this.act;
    }

    public String getCpid() {
        return this.cpid;
    }

    public String getPos() {
        return this.pos;
    }

    public int getRtime() {
        return this.rtime;
    }

    public String getSuuid() {
        return this.suuid;
    }

    public String getValue() {
        return this.value;
    }

    public void setAct(String str) {
        this.act = str;
    }

    public void setCpid(String str) {
        this.cpid = str;
    }

    public void setPos(String str) {
        this.pos = str;
    }

    public void setRtime(int i) {
        this.rtime = i;
    }

    public void setSuuid(String str) {
        this.suuid = str;
    }

    public void setValue(String str) {
        this.value = str;
    }
}
