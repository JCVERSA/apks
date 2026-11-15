package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class sk2 {
    private final o3 a;
    private final ia2 b;
    private final nd2 c;
    private final Context d;
    private int e;

    public sk2(Context context, o3 o3Var, ia2 ia2Var, nd2 nd2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(nd2Var, "reportParametersProvider");
        this.a = o3Var;
        this.b = ia2Var;
        this.c = nd2Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.d = applicationContext;
    }

    public final void a(Context context, List<mb2> list, dq1<List<mb2>> dq1Var) {
        y45.j(context, "context");
        y45.j(list, "wrapperAds");
        y45.j(dq1Var, "listener");
        int i = this.e + 1;
        this.e = i;
        if (i > 5) {
            y45.j("Maximum count of VAST wrapper requests exceeded.", "description");
            dq1Var.a(new sb2(1, "Maximum count of VAST wrapper requests exceeded."));
            return;
        }
        Context context2 = this.d;
        o3 o3Var = this.a;
        nd2 nd2Var = this.c;
        ia2 ia2Var = this.b;
        new tk2(context2, o3Var, nd2Var, ia2Var, new pk2(context2, o3Var, ia2Var, nd2Var)).a(context, list, dq1Var);
    }
}
