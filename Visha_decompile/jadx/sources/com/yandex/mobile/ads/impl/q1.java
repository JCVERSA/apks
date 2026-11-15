package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.Intent;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Result;

public final class q1 {
    private final sp1 a;
    private final t0 b;
    private final p1 c;

    public q1(o3 o3Var, o8 o8Var) {
        this(o3Var, o8Var, o3Var.q().c(), new t0(o8Var, o3Var), new p1(o3Var.q().e()));
    }

    public final void a(Context context, Intent intent) {
        Object objM279constructorimpl;
        y45.j(context, "context");
        y45.j(intent, "intent");
        long jA = wi0.a();
        Intent intentA = this.c.a(context, jA);
        c1 c1VarA = this.b.a(intent);
        int i = d1.d;
        d1 d1VarA = d1.a.a();
        d1VarA.a(jA, c1VarA);
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
            this.a.reportError("Failed to launch AdActivity for result", thM282exceptionOrNullimpl);
        }
    }

    public q1(o3 o3Var, o8<?> o8Var, sp1 sp1Var, t0 t0Var, p1 p1Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(sp1Var, "reporter");
        y45.j(t0Var, "activityResultAdDataCreator");
        y45.j(p1Var, "intentCreator");
        this.a = sp1Var;
        this.b = t0Var;
        this.c = p1Var;
    }
}
