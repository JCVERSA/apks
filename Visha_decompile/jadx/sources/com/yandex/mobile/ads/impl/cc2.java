package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;

public final class cc2 {
    private final go0 a;

    public cc2(go0 go0Var) {
        y45.j(go0Var, "videoAd");
        this.a = go0Var;
    }

    public final String a() {
        JSONObject jSONObjectE = this.a.e();
        String strOptString = jSONObjectE != null ? jSONObjectE.optString("productType") : null;
        if (strOptString == null || strOptString.length() <= 0) {
            return null;
        }
        return strOptString;
    }
}
