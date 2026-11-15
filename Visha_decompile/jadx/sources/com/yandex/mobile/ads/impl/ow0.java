package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;

public final class ow0 {
    private final o92 a;

    public ow0(o92 o92Var) {
        y45.j(o92Var, "valueReader");
        this.a = o92Var;
    }

    public final Object a(JSONObject jSONObject) {
        y45.j(jSONObject, "jsonValue");
        String strA = this.a.a("html", jSONObject);
        float f = (float) jSONObject.getDouble("aspectRatio");
        if (f == 0.0f) {
            f = 1.7777778f;
        }
        return new wu0(strA, f);
    }
}
