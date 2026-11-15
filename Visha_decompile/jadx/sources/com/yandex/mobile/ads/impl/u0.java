package com.yandex.mobile.ads.impl;

import android.app.Activity;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Result;

public final class u0 {
    private final v0 a;

    public u0(sp1 sp1Var) {
        this(sp1Var, new v0(sp1Var));
    }

    public final void a(Activity activity, c1 c1Var) {
        Object objM279constructorimpl;
        y45.j(activity, "activity");
        y45.j(c1Var, "adActivityData");
        if (c1Var.a() == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            activity.startActivityForResult(c1Var.a(), 0);
            zfb zfbVar = zfb.a;
            this.a.a(c1Var);
            activity.finish();
            objM279constructorimpl = Result.m279constructorimpl(zfbVar);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null) {
            this.a.a(thM282exceptionOrNullimpl);
        }
    }

    public u0(sp1 sp1Var, v0 v0Var) {
        y45.j(sp1Var, "reporter");
        y45.j(v0Var, "activityResultReporter");
        this.a = v0Var;
    }
}
