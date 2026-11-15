package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;

public final class wy implements b0<uy> {
    private final q82 a;
    private final ck1 b;

    public wy(q82 q82Var, ck1 ck1Var) {
        y45.j(q82Var, "urlJsonParser");
        y45.j(ck1Var, "preferredPackagesParser");
        this.a = q82Var;
        this.b = ck1Var;
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
        return new uy(strA, q82.a("fallbackUrl", jSONObject), this.b.a(jSONObject.optJSONArray("preferredPackages")));
    }
}
