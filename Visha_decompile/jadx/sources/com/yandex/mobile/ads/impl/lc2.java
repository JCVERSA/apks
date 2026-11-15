package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.LinkedHashSet;

public final class lc2 {
    private final o3 a;
    private final g5 b;
    private final ec2 c;
    private final ba2 d;
    private final ov1 e;
    private final tb2 f;
    private final Context g;
    private final LinkedHashSet h;

    public lc2(Context context, o3 o3Var, g5 g5Var) {
        int i = ec2.d;
        ec2 ec2VarA = ec2.a.a(context);
        ba2 ba2Var = new ba2(o3Var, g5Var);
        ov1 ov1Var = new ov1(context, o3Var.q(), su.a(), g5Var, null, null, 2097136);
        tb2 tb2Var = new tb2();
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, o3Var, g5Var, ec2VarA, ba2Var, ov1Var, tb2Var, applicationContext);
    }

    public static final void a(lc2 lc2Var, jc jcVar, o50 o50Var) {
        lc2Var.a.a(jcVar);
        lc2Var.a.a(o50Var);
    }

    public final void a(ha2 ha2Var, fo0 fo0Var, Object obj, ka2 ka2Var) {
        y45.j(ha2Var, "configuration");
        y45.j(fo0Var, "requestConfigurationParametersProvider");
        y45.j(obj, "requestTag");
        y45.j(ka2Var, "requestListener");
        hc2 hc2Var = new hc2(this, ha2Var, fo0Var, ka2Var, obj);
        ic2 ic2Var = new ic2(ka2Var);
        if (this.h.contains(obj)) {
            hc2Var.invoke();
        } else {
            this.e.a(gl0.e, new gc2(this, obj, hc2Var, ic2Var));
        }
    }

    public lc2(Context context, o3 o3Var, g5 g5Var, ec2 ec2Var, ba2 ba2Var, ov1 ov1Var, tb2 tb2Var, Context context2) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(ec2Var, "videoAdLoadNetwork");
        y45.j(ba2Var, "vastDataRequestListenerFactory");
        y45.j(ov1Var, "sdkInitializer");
        y45.j(tb2Var, "videoAdErrorProvider");
        y45.j(context2, "applicationContext");
        this.a = o3Var;
        this.b = g5Var;
        this.c = ec2Var;
        this.d = ba2Var;
        this.e = ov1Var;
        this.f = tb2Var;
        this.g = context2;
        this.h = new LinkedHashSet();
    }

    public final void a(oi2 oi2Var, Object obj, sm0 sm0Var) {
        y45.j(oi2Var, "configuration");
        y45.j(obj, "requestTag");
        y45.j(sm0Var, "requestListener");
        jc2 jc2Var = new jc2(this, sm0Var, oi2Var, obj);
        kc2 kc2Var = new kc2(sm0Var);
        if (this.h.contains(obj)) {
            jc2Var.invoke();
        } else {
            this.e.a(gl0.e, new gc2(this, obj, jc2Var, kc2Var));
        }
    }
}
