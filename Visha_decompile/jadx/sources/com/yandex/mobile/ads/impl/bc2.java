package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.json.JSONObject;

public final class bc2<T> {
    private final sc2<T> a;

    public bc2(sc2<T> sc2Var) {
        y45.j(sc2Var, "videoAdPlaybackInfoCreator");
        this.a = sc2Var;
    }

    public final zb2<T> a(ra2 ra2Var, int i, int i2) {
        y45.j(ra2Var, "vastVideoAdData");
        mb2 mb2VarE = ra2Var.e();
        uu uuVarB = ra2Var.b();
        ew0 ew0VarC = ra2Var.c();
        i12 i12VarD = ra2Var.d();
        String strF = ra2Var.f();
        JSONObject jSONObjectG = ra2Var.g();
        zc2 zc2Var = new zc2(i, i2 + 1);
        w9 w9VarA = ra2Var.a();
        return new zb2<>(uuVarB, mb2VarE, ew0VarC, this.a.a(mb2VarE, uuVarB, ew0VarC, zc2Var, strF, w9VarA != null ? x9.a(w9VarA) : null, jSONObjectG), i12VarD, String.valueOf(wi0.a()), w9VarA);
    }
}
