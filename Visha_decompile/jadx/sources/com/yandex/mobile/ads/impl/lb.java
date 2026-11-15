package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class lb implements b0<x> {
    private final q82 a;
    private final a72 b;

    public lb(q82 q82Var, a72 a72Var) {
        y45.j(q82Var, "urlJsonParser");
        y45.j(a72Var, "trackingUrlsParser");
        this.a = q82Var;
        this.b = a72Var;
    }

    @Override
    public final x a(JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonObject");
        String strA = j91.a(jSONObject, "jsonAsset", "type", "jsonAttribute", "type");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        this.a.getClass();
        String strA2 = q82.a("url", jSONObject);
        String strA3 = wq0.a("optOutUrl", jSONObject);
        if (strA3 == null) {
            strA3 = "";
        }
        this.b.getClass();
        y45.j(jSONObject, "jsonObject");
        JSONArray jSONArray = jSONObject.getJSONArray("trackingUrls");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            String string = jSONArray.getString(i);
            y45.g(string);
            arrayList.add(string);
        }
        return new jb(strA, strA2, strA3, arrayList);
    }
}
