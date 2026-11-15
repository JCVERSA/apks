package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.qm1;
import defpackage.y45;

public final class qm1 implements kd0<up0> {
    private final bq0 a;
    private final Handler b;
    private final i5 c;
    private pt d;
    private d5 e;
    private String f;

    public qm1(Context context, o3 o3Var, g5 g5Var, bq0 bq0Var) {
        this(context, o3Var, g5Var, bq0Var, new Handler(Looper.getMainLooper()), new i5(context, o3Var, g5Var));
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        this.c.a(w3Var.c());
        final w3 w3Var2 = new w3(w3Var.b(), w3Var.c(), w3Var.d(), this.f);
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                qm1.a(this.b, w3Var2);
            }
        });
    }

    public qm1(Context context, o3 o3Var, g5 g5Var, bq0 bq0Var, Handler handler, i5 i5Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(bq0Var, "adShowApiControllerFactory");
        y45.j(handler, "handler");
        y45.j(i5Var, "adLoadingResultReporter");
        this.a = bq0Var;
        this.b = handler;
        this.c = i5Var;
    }

    public static final void a(qm1 qm1Var, w3 w3Var) {
        y45.j(qm1Var, "this$0");
        y45.j(w3Var, "$requestError");
        pt ptVar = qm1Var.d;
        if (ptVar != null) {
            ptVar.a(w3Var);
        }
        d5 d5Var = qm1Var.e;
        if (d5Var != null) {
            d5Var.a();
        }
    }

    @Override
    public final void a(up0 up0Var) {
        y45.j(up0Var, "ad");
        this.c.a();
        final aq0 aq0VarA = this.a.a(up0Var);
        this.b.post(new Runnable() {
            @Override
            public final void run() {
                qm1.a(this.b, aq0VarA);
            }
        });
    }

    public static final void a(qm1 qm1Var, aq0 aq0Var) {
        y45.j(qm1Var, "this$0");
        y45.j(aq0Var, "$interstitial");
        pt ptVar = qm1Var.d;
        if (ptVar != null) {
            ptVar.a(aq0Var);
        }
        d5 d5Var = qm1Var.e;
        if (d5Var != null) {
            d5Var.a();
        }
    }

    public final void a(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.c.a(new y7(o3Var));
    }

    public final void a(String str) {
        this.f = str;
    }

    public final void a(d5 d5Var) {
        y45.j(d5Var, "listener");
        this.e = d5Var;
    }

    public final void a(pt ptVar) {
        this.d = ptVar;
        this.c.a(ptVar);
    }

    public final void a(sg0 sg0Var) {
        y45.j(sg0Var, "reportParameterManager");
        this.c.a(sg0Var);
    }
}
