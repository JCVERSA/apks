package com.yandex.mobile.ads.impl;

import com.yandex.div2.DivData;
import defpackage.lx7;
import defpackage.y45;
import org.json.JSONObject;

public final class f20 {
    private final sp1 a;
    private final l30 b;
    private final g20 c;

    public f20(sp1 sp1Var) {
        this(sp1Var, new l30(), new g20());
    }

    public final DivData a(JSONObject jSONObject, JSONObject jSONObject2) {
        y45.j(jSONObject, "card");
        try {
            l30 l30Var = this.b;
            lx7 lx7Var = lx7.a;
            y45.i(lx7Var, "LOG");
            l30Var.getClass();
            y45.j(lx7Var, "logger");
            defpackage.wn2 wn2Var = new defpackage.wn2(lx7Var, null, 2, null);
            if (jSONObject2 != null) {
                wn2Var.e(jSONObject2);
            }
            this.c.getClass();
            y45.j(wn2Var, "environment");
            y45.j(jSONObject, "card");
            return DivData.j.a(wn2Var, jSONObject);
        } catch (Throwable th) {
            this.a.reportError("Failed to create DivData", th);
            return null;
        }
    }

    public f20(sp1 sp1Var, l30 l30Var, g20 g20Var) {
        y45.j(sp1Var, "reporter");
        y45.j(l30Var, "divParsingEnvironmentFactory");
        y45.j(g20Var, "divDataFactory");
        this.a = sp1Var;
        this.b = l30Var;
        this.c = g20Var;
    }
}
