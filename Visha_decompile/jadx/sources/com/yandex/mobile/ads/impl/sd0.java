package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.Intent;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Result;

public final class sd0 {
    private final sp1 a;
    private final rd0 b;

    public sd0(bv1 bv1Var) {
        this(bv1Var, bv1Var.c(), new rd0(bv1Var.e()));
    }

    public final Object a(Context context, c1 c1Var) {
        Object objM279constructorimpl;
        y45.j(context, "context");
        y45.j(c1Var, "adActivityData");
        long jA = wi0.a();
        Intent intentA = this.b.a(context, jA);
        int i = d1.d;
        d1 d1VarA = d1.a.a();
        d1VarA.a(jA, c1Var);
        try {
            Result.Companion companion = Result.INSTANCE;
            context.startActivity(intentA);
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            d1VarA.a(jA);
            hp0.a("Failed to show Fullscreen Ad. Exception: " + thM282exceptionOrNullimpl, new Object[0]);
            this.a.reportError("Failed to show Fullscreen Ad", thM282exceptionOrNullimpl);
        }
        return objM279constructorimpl;
    }

    public sd0(bv1 bv1Var, sp1 sp1Var, rd0 rd0Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(sp1Var, "reporter");
        y45.j(rd0Var, "intentCreator");
        this.a = sp1Var;
        this.b = rd0Var;
    }
}
