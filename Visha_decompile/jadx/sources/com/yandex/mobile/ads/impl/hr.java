package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;

public final class hr {
    private final rl0 a;

    public hr() {
        this(new rl0());
    }

    public final ib0 a(String str, JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonNativeAd");
        y45.j(str, "conditionKey");
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        rl0 rl0Var = this.a;
        y45.g(jSONObject2);
        return new ib0(rl0Var.a(jSONObject2));
    }

    public hr(rl0 rl0Var) {
        y45.j(rl0Var, "installedPackagesJsonParser");
        this.a = rl0Var;
    }
}
