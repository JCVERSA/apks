package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.om1;
import defpackage.y45;

public final class om1 implements kd0<uf> {
    private final Handler a;
    private final i5 b;
    private final cg c;
    private ws d;
    private d5 e;

    public om1(Context context, o3 o3Var, g5 g5Var, Handler handler, i5 i5Var, cg cgVar) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(handler, "handler");
        y45.j(i5Var, "adLoadingResultReporter");
        y45.j(cgVar, "appOpenAdShowApiControllerFactory");
        this.a = handler;
        this.b = i5Var;
        this.c = cgVar;
    }

    @Override
    public final void a(final w3 w3Var) {
        y45.j(w3Var, "error");
        this.b.a(w3Var.c());
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                om1.a(this.b, w3Var);
            }
        });
    }

    public static final void a(om1 om1Var, w3 w3Var) {
        y45.j(om1Var, "this$0");
        y45.j(w3Var, "$error");
        ws wsVar = om1Var.d;
        if (wsVar != null) {
            wsVar.a(w3Var);
        }
        d5 d5Var = om1Var.e;
        if (d5Var != null) {
            d5Var.a();
        }
    }

    public om1(Context context, o3 o3Var, g5 g5Var, md0 md0Var) {
        this(context, o3Var, g5Var, new Handler(Looper.getMainLooper()), new i5(context, o3Var, g5Var), new cg(context, md0Var));
    }

    @Override
    public final void a(uf ufVar) {
        y45.j(ufVar, "ad");
        this.b.a();
        final bg bgVarA = this.c.a(ufVar);
        this.a.post(new Runnable() {
            @Override
            public final void run() {
                om1.a(this.b, bgVarA);
            }
        });
    }

    public static final void a(om1 om1Var, bg bgVar) {
        y45.j(om1Var, "this$0");
        y45.j(bgVar, "$appOpenAdApiController");
        ws wsVar = om1Var.d;
        if (wsVar != null) {
            wsVar.a(bgVar);
        }
        d5 d5Var = om1Var.e;
        if (d5Var != null) {
            d5Var.a();
        }
    }

    public final void a(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.b.a(new y7(o3Var));
    }

    public final void a(ws wsVar) {
        this.d = wsVar;
        this.b.a(wsVar);
    }

    public final void a(d5 d5Var) {
        y45.j(d5Var, "listener");
        this.e = d5Var;
    }

    public final void a(sg0 sg0Var) {
        y45.j(sg0Var, "reportParameterManager");
        this.b.a(sg0Var);
    }
}
