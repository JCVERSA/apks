package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ak0 implements ug<xj0> {
    private final pj0 a;

    public ak0() {
        this(new pj0());
    }

    @Override
    public final xj0 a(JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonAsset");
        if (!jSONObject.has(ES6Iterator.VALUE_PROPERTY) || jSONObject.isNull(ES6Iterator.VALUE_PROPERTY)) {
            sp0.b(new Object[0]);
            throw new t61("Native Ad json has not required attributes");
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject(ES6Iterator.VALUE_PROPERTY);
        pj0 pj0Var = this.a;
        y45.g(jSONObject2);
        return pj0Var.b(jSONObject2);
    }

    public ak0(pj0 pj0Var) {
        y45.j(pj0Var, "imageParser");
        this.a = pj0Var;
    }
}
