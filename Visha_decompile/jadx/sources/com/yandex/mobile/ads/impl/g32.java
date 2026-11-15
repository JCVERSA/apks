package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class g32 implements ug<String> {
    @Override
    public final String a(JSONObject jSONObject) throws t61 {
        y45.j(jSONObject, "jsonAsset");
        String strA = j91.a(jSONObject, "jsonAsset", ES6Iterator.VALUE_PROPERTY, "jsonAttribute", ES6Iterator.VALUE_PROPERTY);
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        return strA;
    }
}
