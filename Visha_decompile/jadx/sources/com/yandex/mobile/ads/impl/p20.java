package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class p20 implements b0<x> {
    private final f10 a;
    private final g30 b;
    private final a72 c;
    private final boolean d;

    public p20(f10 f10Var, g30 g30Var, a72 a72Var, boolean z) {
        y45.j(f10Var, "designJsonParser");
        y45.j(g30Var, "divKitDesignParser");
        y45.j(a72Var, "trackingUrlsParser");
        this.a = f10Var;
        this.b = g30Var;
        this.c = a72Var;
        this.d = z;
    }

    @Override
    public final x a(JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonObject");
        String strA = j91.a(jSONObject, "jsonAsset", "type", "jsonAttribute", "type");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        this.c.getClass();
        y45.j(jSONObject, "jsonObject");
        JSONArray jSONArray = jSONObject.getJSONArray("trackingUrls");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            String string = jSONArray.getString(i);
            y45.g(string);
            arrayList.add(string);
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("design");
        a10 a10VarA = jSONObjectOptJSONObject != null ? this.a.a(jSONObjectOptJSONObject) : null;
        b30 b30VarA = a10VarA != null ? this.b.a(a10VarA, this.d) : null;
        if (b30VarA != null) {
            return new n20(strA, b30VarA, arrayList);
        }
        throw new t61("Native Ad json has not required attributes");
    }
}
