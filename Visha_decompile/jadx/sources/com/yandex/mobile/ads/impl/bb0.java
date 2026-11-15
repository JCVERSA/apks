package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class bb0 implements ug<za0> {
    private final ak0 a;

    public bb0(ak0 ak0Var) {
        y45.j(ak0Var, "imageValueParser");
        this.a = ak0Var;
    }

    @Override
    public final za0 a(JSONObject jSONObject) throws t61 {
        y45.j(jSONObject, "jsonAsset");
        if (jSONObject.has(ES6Iterator.VALUE_PROPERTY)) {
            return new za0(!jSONObject.isNull(ES6Iterator.VALUE_PROPERTY) ? this.a.a(jSONObject) : null);
        }
        sp0.b(new Object[0]);
        throw new t61("Native Ad json has not required attributes");
    }
}
