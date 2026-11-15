package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class fc2 {
    private final o3 a;
    private final lc2 b;
    private final Context c;
    private final Object d;

    public fc2(Context context, o3 o3Var, g5 g5Var) {
        lc2 lc2Var = new lc2(context, o3Var, g5Var);
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, o3Var, g5Var, lc2Var, applicationContext);
    }

    public final void a(ha2 ha2Var, fo0 fo0Var, ea2 ea2Var) {
        y45.j(ha2Var, "configuration");
        y45.j(fo0Var, "requestConfigurationParametersProvider");
        y45.j(ea2Var, "requestListener");
        Context context = this.c;
        bv1 bv1VarQ = this.a.q();
        ln2 ln2VarA = bv1VarQ.a();
        this.b.a(ha2Var, fo0Var, this.d, new ka2(context, bv1VarQ, ea2Var, new qa2(context, ln2VarA, ln2VarA.a(context))));
    }

    public fc2(Context context, o3 o3Var, g5 g5Var, lc2 lc2Var, Context context2) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(lc2Var, "videoAdLoaderController");
        y45.j(context2, "applicationContext");
        this.a = o3Var;
        this.b = lc2Var;
        this.c = context2;
        this.d = new Object();
    }

    public final void a(oi2 oi2Var, sm0 sm0Var) {
        y45.j(oi2Var, "vmapRequestConfig");
        y45.j(sm0Var, "requestListener");
        this.b.a(oi2Var, this.d, sm0Var);
    }
}
