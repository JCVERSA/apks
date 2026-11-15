package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;

public final class ra2 {
    private final mb2 a;
    private final uu b;
    private final ew0 c;
    private final i12 d;
    private final String e;
    private final JSONObject f;
    private final w9 g;

    public ra2(mb2 mb2Var, uu uuVar, ew0 ew0Var, i12 i12Var, String str, JSONObject jSONObject, w9 w9Var) {
        y45.j(mb2Var, "videoAd");
        y45.j(uuVar, "creative");
        y45.j(ew0Var, "mediaFile");
        this.a = mb2Var;
        this.b = uuVar;
        this.c = ew0Var;
        this.d = i12Var;
        this.e = str;
        this.f = jSONObject;
        this.g = w9Var;
    }

    public final w9 a() {
        return this.g;
    }

    public final uu b() {
        return this.b;
    }

    public final ew0 c() {
        return this.c;
    }

    public final i12 d() {
        return this.d;
    }

    public final mb2 e() {
        return this.a;
    }

    public final String f() {
        return this.e;
    }

    public final JSONObject g() {
        return this.f;
    }
}
