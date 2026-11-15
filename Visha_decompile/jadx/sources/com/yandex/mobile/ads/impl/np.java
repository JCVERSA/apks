package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;

public final class np implements b0<x> {
    @Override
    public final x a(JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonObject");
        String strA = j91.a(jSONObject, "jsonAsset", "type", "jsonAttribute", "type");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        return new lp(strA);
    }
}
