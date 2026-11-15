package com.yandex.mobile.ads.impl;

import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class a12 {
    private final wr0 a;
    private final c12 b;

    public a12(wr0 wr0Var) {
        this(wr0Var, new c12());
    }

    public final z02 a(JSONObject jSONObject, xj xjVar) throws JSONException, t61 {
        y45.j(jSONObject, "jsonObject");
        y45.j(xjVar, "base64EncodingParameters");
        String strA = j91.a(jSONObject, "jsonAsset", "name", "jsonAttribute", "name");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        JSONObject jSONObject2 = jSONObject.getJSONObject(AuthInfo.Component.CODE_LINK);
        wr0 wr0Var = this.a;
        y45.g(jSONObject2);
        vr0 vr0VarA = wr0Var.a(jSONObject2, xjVar);
        JSONObject jSONObject3 = jSONObject.getJSONObject(ES6Iterator.VALUE_PROPERTY);
        c12 c12Var = this.b;
        y45.g(jSONObject3);
        return new z02(vr0VarA, strA, c12Var.a(jSONObject3));
    }

    public a12(wr0 wr0Var, c12 c12Var) {
        y45.j(wr0Var, "linkJsonParser");
        y45.j(c12Var, "valueParser");
        this.a = wr0Var;
        this.b = c12Var;
    }
}
