package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;

public final class c12 implements ug<b12> {
    private final pj0 a;

    public c12() {
        this(new pj0());
    }

    @Override
    public final b12 a(JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonAsset");
        String strA = j91.a(jSONObject, "jsonAsset", "title", "jsonAttribute", "title");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        JSONObject jSONObject2 = jSONObject.getJSONObject("image");
        pj0 pj0Var = this.a;
        y45.g(jSONObject2);
        return new b12(pj0Var.b(jSONObject2), strA);
    }

    public c12(pj0 pj0Var) {
        y45.j(pj0Var, "imageParser");
        this.a = pj0Var;
    }
}
