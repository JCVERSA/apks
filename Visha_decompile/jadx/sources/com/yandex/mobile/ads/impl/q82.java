package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;

public final class q82 {
    public static String a(String str, JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonObject");
        y45.j(str, "key");
        String strA = j91.a(jSONObject, "jsonAsset", str, "jsonAttribute", str);
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        if (strA.length() != 0) {
            return strA;
        }
        throw new t61("Native Ad json has not required attributes");
    }
}
