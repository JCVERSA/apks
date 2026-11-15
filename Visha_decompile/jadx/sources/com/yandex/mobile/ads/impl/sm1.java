package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.sm1;
import defpackage.y45;

public final class sm1 implements kd0<bs1> {
    private final is1 a;
    private final Handler b;
    private final i5 c;
    private String d;
    private iu e;
    private d5 f;

    public sm1(Context context, o3 o3Var, g5 g5Var, is1 is1Var) {
        this(context, o3Var, g5Var, is1Var, new Handler(Looper.getMainLooper()), new i5(context, o3Var, g5Var));
    }

    @Override
    public final void a(final w3 w3Var) {
        y45.j(w3Var, "error");
        this.c.a(w3Var.c());
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                sm1.a(w3Var, this);
            }
        });
    }

    public sm1(Context context, o3 o3Var, g5 g5Var, is1 is1Var, Handler handler, i5 i5Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(is1Var, "rewardedAdShowApiControllerFactoryFactory");
        y45.j(handler, "handler");
        y45.j(i5Var, "adLoadingResultReporter");
        this.a = is1Var;
        this.b = handler;
        this.c = i5Var;
    }

    public static final void a(w3 w3Var, sm1 sm1Var) {
        y45.j(w3Var, "$error");
        y45.j(sm1Var, "this$0");
        w3 w3Var2 = new w3(w3Var.b(), w3Var.c(), w3Var.d(), sm1Var.d);
        iu iuVar = sm1Var.e;
        if (iuVar != null) {
            iuVar.a(w3Var2);
        }
        d5 d5Var = sm1Var.f;
        if (d5Var != null) {
            d5Var.a();
        }
    }

    @Override
    public final void a(bs1 bs1Var) {
        y45.j(bs1Var, "ad");
        this.c.a();
        final hs1 hs1VarA = this.a.a(bs1Var);
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                sm1.a(this.b, hs1VarA);
            }
        });
    }

    public static final void a(sm1 sm1Var, hs1 hs1Var) {
        y45.j(sm1Var, "this$0");
        y45.j(hs1Var, "$interstitial");
        iu iuVar = sm1Var.e;
        if (iuVar != null) {
            iuVar.a(hs1Var);
        }
        d5 d5Var = sm1Var.f;
        if (d5Var != null) {
            d5Var.a();
        }
    }

    public final void a(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.c.a(new y7(o3Var));
    }

    public final void a(String str) {
        this.d = str;
    }

    public final void a(d5 d5Var) {
        y45.j(d5Var, "listener");
        this.f = d5Var;
    }

    public final void a(iu iuVar) {
        this.e = iuVar;
        this.c.a(iuVar);
    }

    public final void a(sg0 sg0Var) {
        y45.j(sg0Var, "reportParameterManager");
        this.c.a(sg0Var);
    }
}
