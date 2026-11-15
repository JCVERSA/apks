package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class cu1 implements iv1<bu1> {
    private final bv1 a;
    private final o3 b;
    private final aj c;
    private bu1 d;

    public cu1(bv1 bv1Var, o3 o3Var, aj ajVar) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(ajVar, "adLoadController");
        this.a = bv1Var;
        this.b = o3Var;
        this.c = ajVar;
    }

    @Override
    public final void a() {
        bu1 bu1Var = this.d;
        if (bu1Var != null) {
            bu1Var.a();
        }
        this.d = null;
    }

    @Override
    public final void a(o8<String> o8Var, gz1 gz1Var, String str, kv1<bu1> kv1Var) throws tj2 {
        y45.j(o8Var, "adResponse");
        y45.j(gz1Var, "sizeInfo");
        y45.j(str, "htmlResponse");
        y45.j(kv1Var, "creationListener");
        Context contextL = this.c.l();
        np0 np0VarC = this.c.C();
        qe2 qe2VarD = this.c.D();
        bv1 bv1Var = this.a;
        o3 o3Var = this.b;
        bu1 bu1Var = new bu1(contextL, bv1Var, o3Var, o8Var, np0VarC, this.c, new cj(), new l21(), new zg0(), new rj(contextL, o3Var), new yi());
        this.d = bu1Var;
        bu1Var.a(gz1Var, str, qe2VarD, kv1Var);
    }
}
