package com.yandex.mobile.ads.impl;

import defpackage.ky5;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class uz0 {
    private final jz0 a;

    public uz0() {
        this(new jz0());
    }

    public final lz0 a(JSONObject jSONObject) {
        t4 t4Var;
        y45.j(jSONObject, "jsonMediationNetwork");
        try {
            vq0.a.getClass();
            String strA = vq0.a("adapter", jSONObject);
            y45.j(jSONObject, "parent");
            y45.j("network_data", "name");
            JSONObject jSONObject2 = jSONObject.getJSONObject("network_data");
            Map mapE = ky5.e();
            Iterator<String> itKeys = jSONObject2.keys();
            y45.i(itKeys, "keys(...)");
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                y45.g(next);
                String string = jSONObject2.getString(next);
                y45.i(string, "getString(...)");
                mapE.put(next, string);
            }
            Map mapD = ky5.d(mapE);
            if (mapD.isEmpty()) {
                return null;
            }
            List listC = vq0.c("click_tracking_urls", jSONObject);
            List listC2 = vq0.c("impression_tracking_urls", jSONObject);
            List listC3 = vq0.c("ad_response_tracking_urls", jSONObject);
            Map mapA = vq0.a(jSONObject);
            if (jSONObject.has("impression_data")) {
                this.a.getClass();
                y45.j(jSONObject, "jsonObject");
                y45.j("impression_data", "attributeName");
                try {
                    y45.j(jSONObject, "jsonAsset");
                    y45.j("impression_data", "jsonAttribute");
                    String string2 = jSONObject.getString("impression_data");
                    y45.g(string2);
                    if (string2.length() == 0 || y45.e("null", string2)) {
                        throw new JSONException("Json has not required attributes");
                    }
                    t4Var = new t4(string2);
                } catch (Exception unused) {
                    sp0.b(new Object[0]);
                    t4Var = null;
                }
            } else {
                t4Var = null;
            }
            return new lz0(strA, mapD, listC2, listC, listC3, t4Var, mapA);
        } catch (JSONException unused2) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    public uz0(jz0 jz0Var) {
        y45.j(jz0Var, "impressionDataParser");
        this.a = jz0Var;
    }
}
