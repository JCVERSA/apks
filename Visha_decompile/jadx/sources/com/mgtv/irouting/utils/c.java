package com.mgtv.irouting.utils;

import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.gslb.NetResponse;
import defpackage.hb0;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

public class c extends b {
    public String h;
    public int i = -1;
    public String j = "0";
    public String k = "0";
    public long l = 0;
    public long m = 0;
    public long n = 0;
    public long o = 0;
    public long p = 0;
    public long q = 0;
    public int r = 0;

    public c(String str) {
        this.h = str;
    }

    @Override
    public String a() {
        JSONStringer jSONStringer = new JSONStringer();
        try {
            jSONStringer.object().key("type").value(this.h).key("url").value(this.a).key("ip").value(this.b).key("port").value(this.i).key("sp").value(this.c).key("nettype").value(this.d).key("rtt").value(Integer.parseInt(this.e)).key("success_num").value(this.l).key("err_num").value(this.m).key("dns_rtt").value(this.n).key("conn_rtt").value(this.o).key("ping_rtt").value(this.p).key("other_rtt").value(this.q).key(hb0.KEY_NAME_ERROR_CODE).value(this.r).key("ver").value(f.e).key(DownloadFacadeEnum.USER_IMEI).value(f.f).key("city").value(f.g).key("prov").value(f.h).key("nt").value(f.i).endObject();
            return jSONStringer.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return NetResponse.EMPTY_RESPONSE;
        }
    }

    @Override
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                jSONObject.put("type", this.h);
                jSONObject.put("url", this.a);
                jSONObject.put("ip", this.b);
                jSONObject.put("port", this.i);
                jSONObject.put("sp", this.c);
                jSONObject.put("nettype", this.d);
                jSONObject.put("success_num", this.l);
                jSONObject.put("err_num", this.m);
                jSONObject.put("rtt", Integer.parseInt(this.e));
                jSONObject.put("dns_rtt", this.n);
                jSONObject.put("conn_rtt", this.o);
                jSONObject.put("ping_rtt", this.p);
                jSONObject.put("other_rtt", this.q);
                jSONObject.put(hb0.KEY_NAME_ERROR_CODE, this.r);
                jSONObject.put("create", this.g);
                jSONObject.put("ver", f.e);
                jSONObject.put(DownloadFacadeEnum.USER_IMEI, f.f);
                jSONObject.put("city", f.g);
                jSONObject.put("prov", f.h);
                jSONObject.put("nt", f.i);
                return jSONObject;
            } catch (JSONException e) {
                e.printStackTrace();
                return jSONObject;
            }
        } catch (Throwable unused) {
            return jSONObject;
        }
    }

    @Override
    public String toString() {
        e.a("[httpdns-v1.0.7]", "str : " + ((((((((((("*\n-- 服务器ip = " + this.b + "\n") + "-- 域名 = " + this.a + "\n") + "-- 服务器端口 = " + this.i + "\n") + "-- 运营商 = " + this.c + "\n") + "-- 过期时间 = " + this.j + "\n") + "-- 优先级 = " + this.k + "\n") + "-- 访问ip服务器的往返时延 = " + this.e + "\n") + "-- 历史成功次数 = " + this.l + "\n") + "-- 历史错误次数 = " + this.m + "\n") + "-- 系统对服务器的评分 = " + this.f + "\n") + "\n"));
        return a();
    }
}
