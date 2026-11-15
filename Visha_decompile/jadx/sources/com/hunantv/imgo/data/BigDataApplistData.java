package com.hunantv.imgo.data;

import com.google.gson.Gson;
import com.hunantv.imgo.net.RequestParams;
import com.mgtv.json.JsonInterface;
import java.net.URLEncoder;

public class BigDataApplistData extends CommonData {
    private String act;
    protected String bdsv;
    protected String list;

    public class AppList implements JsonInterface {
        public String name = com.hunantv.imgo.util.b.e();
        public String packet = com.hunantv.imgo.util.b.c();
        public String apav = com.hunantv.imgo.util.b.i() + "";

        public AppList() {
        }

        public String getApav() {
            return this.apav;
        }

        public String getName() {
            return this.name;
        }

        public String getPacket() {
            return this.packet;
        }

        public void setApav(String str) {
            this.apav = str;
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setPacket(String str) {
            this.packet = str;
        }
    }

    public BigDataApplistData() {
        setAct("appls");
        setBid(CommonData.BID_APPLIST);
        setList(URLEncoder.encode(new Gson().toJson(new AppList())));
    }

    public String getAct() {
        return this.act;
    }

    public String getBdsv() {
        return this.bdsv;
    }

    public String getList() {
        return this.list;
    }

    public RequestParams getRequestParams() {
        RequestParams requestParamsCreateBaseRequestParams = createBaseRequestParams();
        requestParamsCreateBaseRequestParams.put("bdsv", this.bdsv);
        requestParamsCreateBaseRequestParams.put("list", this.list);
        requestParamsCreateBaseRequestParams.put("act", this.act);
        return requestParamsCreateBaseRequestParams;
    }

    public void setAct(String str) {
        this.act = str;
    }

    public void setBdsv(String str) {
        this.bdsv = str;
    }

    public void setList(String str) {
        this.list = str;
    }
}
