package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.um0;
import defpackage.y45;

public final class um0 implements sm0.a {
    private final o3 a;
    private final g5 b;
    private final tm0 c;
    private final Handler d;
    private final i5 e;
    private jt f;

    public um0(Context context, o3 o3Var, g5 g5Var, tm0 tm0Var) {
        this(context, o3Var, g5Var, tm0Var, new Handler(Looper.getMainLooper()), new i5(context, o3Var, g5Var));
    }

    @Override
    public final void a(final String str) {
        y45.j(str, "error");
        this.b.a(f5.e);
        this.e.a(str);
        this.d.post(new Runnable() {
            @Override
            public final void run() {
                um0.a(this.b, str);
            }
        });
    }

    public um0(Context context, o3 o3Var, g5 g5Var, tm0 tm0Var, Handler handler, i5 i5Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(tm0Var, "requestFinishedListener");
        y45.j(handler, "handler");
        y45.j(i5Var, "adLoadingResultReporter");
        this.a = o3Var;
        this.b = g5Var;
        this.c = tm0Var;
        this.d = handler;
        this.e = i5Var;
    }

    public static final void a(um0 um0Var, String str) {
        y45.j(um0Var, "this$0");
        y45.j(str, "$error");
        jt jtVar = um0Var.f;
        if (jtVar != null) {
            jtVar.onInstreamAdFailedToLoad(str);
        }
        um0Var.c.a();
    }

    @Override
    public final void a(final et etVar) {
        y45.j(etVar, "instreamAd");
        a4.a(this.a.b().a());
        this.b.a(f5.e);
        this.e.a();
        this.d.post(new Runnable() {
            @Override
            public final void run() {
                um0.a(this.b, etVar);
            }
        });
    }

    public static final void a(um0 um0Var, et etVar) {
        y45.j(um0Var, "this$0");
        y45.j(etVar, "$instreamAd");
        jt jtVar = um0Var.f;
        if (jtVar != null) {
            jtVar.a(etVar);
        }
        um0Var.c.a();
    }

    public final void a(jt jtVar) {
        this.f = jtVar;
        this.e.a(jtVar);
    }

    public final void a(oi2 oi2Var) {
        y45.j(oi2Var, "requestConfig");
        this.e.a(new yo0(oi2Var));
    }
}
