package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class xd1 implements ug<String> {
    private final rr1 a;

    public xd1(rr1 rr1Var) {
        y45.j(rr1Var, "reviewCountFormatter");
        this.a = rr1Var;
    }

    @Override
    public final String a(JSONObject jSONObject) throws t61 {
        y45.j(jSONObject, "jsonAsset");
        String strA = j91.a(jSONObject, "jsonAsset", "name", "jsonAttribute", "name");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        y45.j(jSONObject, "jsonAsset");
        y45.j(ES6Iterator.VALUE_PROPERTY, "jsonAttribute");
        String strOptString = jSONObject.optString(ES6Iterator.VALUE_PROPERTY);
        if (strOptString == null || strOptString.length() == 0 || y45.e(strOptString, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strOptString);
        return y45.e("review_count", strA) ? this.a.a(strOptString) : strOptString;
    }
}
