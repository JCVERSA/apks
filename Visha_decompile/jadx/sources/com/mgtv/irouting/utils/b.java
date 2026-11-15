package com.mgtv.irouting.utils;

import com.lzy.okgo.cookie.SerializableCookie;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.gslb.NetResponse;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

public class b {
    public String a = "";
    public String b = "";
    public String c = "";
    public String d = "";
    public String e = "-1";
    public float f = 0.0f;
    public long g;

    public b() {
        this.g = 0L;
        this.g = System.currentTimeMillis() / 1000;
    }

    public String a() {
        JSONStringer jSONStringer = new JSONStringer();
        try {
            jSONStringer.object().key(SerializableCookie.DOMAIN).value(this.a).key("ip").value(this.b).key("grade").value(this.f).key("create").value(this.g).key("ver").value(f.e).key(DownloadFacadeEnum.USER_IMEI).value(f.f).key("city").value(f.g).key("prov").value(f.h).key("nt").value(f.i).endObject();
            return jSONStringer.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return NetResponse.EMPTY_RESPONSE;
        }
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                jSONObject.put("s", this.f);
                jSONObject.put("ip", this.b);
                jSONObject.put("rtt", Integer.valueOf(this.e));
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

    public String toString() {
        e.a("[httpdns-v1.0.7]", "str : " + (((((("*\n-- 服务器ip = " + this.b + "\n") + "-- 域名 = " + this.a + "\n") + "-- 运营商 = " + this.c + "\n") + "-- 网络类型 = " + this.d + "\n") + "-- 系统对服务器的评分 = " + this.f + "\n") + "\n"));
        return a();
    }
}
