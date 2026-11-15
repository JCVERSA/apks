package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.AnyThread;
import defpackage.y45;

public final class v91 {
    private final defpackage.nk1 a;
    private final q91 b;
    private final pa1 c;

    @AnyThread
    public interface a {
        void a(yk1 yk1Var, s41 s41Var);
    }

    public v91(Context context, bv1 bv1Var, g5 g5Var, e51 e51Var, defpackage.nk1 nk1Var) {
        this(context, bv1Var, g5Var, e51Var, nk1Var, new q91(context, g5Var, e51Var), new pa1(context, bv1Var.a()));
    }

    public final void a() {
        this.b.a();
        this.c.a();
        kotlinx.coroutines.d.f(this.a, null, 1, null);
    }

    public v91(Context context, bv1 bv1Var, g5 g5Var, e51 e51Var, defpackage.nk1 nk1Var, q91 q91Var, pa1 pa1Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(e51Var, "controllers");
        y45.j(nk1Var, "coroutineScope");
        y45.j(q91Var, "nativeMediaLoader");
        y45.j(pa1Var, "nativeVerificationResourcesLoader");
        this.a = nk1Var;
        this.b = q91Var;
        this.c = pa1Var;
    }

    public final void a(Context context, o3 o3Var, s41 s41Var, i51.a.C0319a c0319a, ew ewVar, g51 g51Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(s41Var, "nativeAdBlock");
        y45.j(c0319a, "listener");
        y45.j(ewVar, "debugEventReporter");
        y45.j(g51Var, "nativeAdCreationListener");
        defpackage.el0.d(this.a, new x91(g51Var), null, new w91(context, g51Var, c0319a, this, o3Var, s41Var, ewVar, null), 2, null);
    }
}
