package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class up implements ug<tp> {
    @Override
    public final tp a(JSONObject jSONObject) throws t61 {
        y45.j(jSONObject, "jsonAsset");
        if (jSONObject.has(ES6Iterator.VALUE_PROPERTY) && jSONObject.isNull(ES6Iterator.VALUE_PROPERTY)) {
            return new tp(tp.a.c, null);
        }
        tp.a aVar = tp.a.b;
        String strA = j91.a(jSONObject, "jsonAsset", ES6Iterator.VALUE_PROPERTY, "jsonAttribute", ES6Iterator.VALUE_PROPERTY);
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        return new tp(aVar, strA);
    }
}
