package com.hunantv.imgo.data;

import com.google.gson.Gson;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.net.RequestParams;
import com.hunantv.imgo.net.c;
import com.hunantv.imgo.util.PreferencesUtil;
import com.hunantv.imgo.util.p;
import com.mgtv.json.JsonInterface;
import java.net.URLEncoder;

public class BigDataWifiData extends CommonData {
    private String act;
    protected String bdsv;
    protected String wip;
    protected String wls;
    protected String wmac;
    protected String wname;

    public class Wls implements JsonInterface {
        public String capa;
        public String issv;
        public String ssid = com.hunantv.imgo.util.b.w();
        public String bssid = com.hunantv.imgo.util.b.v();
        public String level = p.b(BaseApplication.getContext());
        public String freq = p.c(BaseApplication.getContext());
        public String seen = PreferencesUtil.a("pref_scan_wifi_time");

        public Wls() {
            this.issv = 1 == c.c() ? "1" : "";
        }

        public String getBssid() {
            return this.bssid;
        }

        public String getCapa() {
            return this.capa;
        }

        public String getFreq() {
            return this.freq;
        }

        public String getIssv() {
            return this.issv;
        }

        public String getLevel() {
            return this.level;
        }

        public String getSeen() {
            return this.seen;
        }

        public String getSsid() {
            return this.ssid;
        }

        public void setBssid(String str) {
            this.bssid = str;
        }

        public void setCapa(String str) {
            this.capa = str;
        }

        public void setFreq(String str) {
            this.freq = str;
        }

        public void setIssv(String str) {
            this.issv = str;
        }

        public void setLevel(String str) {
            this.level = str;
        }

        public void setSeen(String str) {
            this.seen = str;
        }

        public void setSsid(String str) {
            this.ssid = str;
        }
    }

    public BigDataWifiData() {
        setAct("wifi");
        setBid(CommonData.BID_WIFI);
        setWmac(com.hunantv.imgo.util.b.v());
        setWname(com.hunantv.imgo.util.b.w());
        setWip(com.hunantv.imgo.util.b.L());
        setWls(URLEncoder.encode(new Gson().toJson(new Wls())));
    }

    public String getAct() {
        return this.act;
    }

    public String getBdsv() {
        return this.bdsv;
    }

    public RequestParams getRequestParams() {
        RequestParams requestParamsCreateBaseRequestParams = createBaseRequestParams();
        requestParamsCreateBaseRequestParams.put("wmac", this.bdsv);
        requestParamsCreateBaseRequestParams.put("wname", this.bdsv);
        requestParamsCreateBaseRequestParams.put("wip", this.bdsv);
        requestParamsCreateBaseRequestParams.put("bdsv", this.bdsv);
        requestParamsCreateBaseRequestParams.put("wls", this.wls);
        requestParamsCreateBaseRequestParams.put("act", this.act);
        return requestParamsCreateBaseRequestParams;
    }

    public String getWip() {
        return this.wip;
    }

    public String getWls() {
        return this.wls;
    }

    public String getWmac() {
        return this.wmac;
    }

    public String getWname() {
        return this.wname;
    }

    public void setAct(String str) {
        this.act = str;
    }

    public void setBdsv(String str) {
        this.bdsv = str;
    }

    public void setWip(String str) {
        this.wip = str;
    }

    public void setWls(String str) {
        this.wls = str;
    }

    public void setWmac(String str) {
        this.wmac = str;
    }

    public void setWname(String str) {
        this.wname = str;
    }
}
