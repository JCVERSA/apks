package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import defpackage.y45;

public final class yb {
    private final x50 a;
    private final ff1 b;
    private final k0 c;

    public yb(x50 x50Var, ff1 ff1Var) {
        this(x50Var, ff1Var, new k0());
    }

    public final void a(View view, jb jbVar) {
        Activity activityB;
        y45.j(view, "view");
        y45.j(jbVar, "action");
        this.c.getClass();
        y45.j(view, "view");
        Context context = view.getContext();
        y45.i(context, "getContext(...)");
        do {
            activityB = null;
            Activity activity = context instanceof Activity ? (Activity) context : null;
            if (activity != null) {
                activityB = activity;
                break;
            }
            ContextWrapper contextWrapper = context instanceof ContextWrapper ? (ContextWrapper) context : null;
            if (contextWrapper == null) {
                break;
            } else {
                context = contextWrapper.getBaseContext();
            }
        } while (context != null);
        if (activityB == null) {
            activityB = p0.b();
        }
        if (activityB == null || !oa.a((Context) activityB)) {
            return;
        }
        try {
            a(activityB, new bc(activityB), jbVar);
        } catch (Throwable unused) {
        }
    }

    public yb(x50 x50Var, ff1 ff1Var, k0 k0Var) {
        y45.j(x50Var, "eventListenerController");
        y45.j(ff1Var, "openUrlHandler");
        y45.j(k0Var, "activityContextProvider");
        this.a = x50Var;
        this.b = ff1Var;
        this.c = k0Var;
    }

    private final void a(Activity activity, bc bcVar, jb jbVar) {
        new nb(new pb(activity, bcVar, new mb(activity, bcVar), new ob()).a(), bcVar, this.a, this.b, new Handler(Looper.getMainLooper())).a(jbVar.c(), jbVar.d());
    }
}
