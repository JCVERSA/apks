package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class p0 {
    public static final p0 a = new p0();
    private static q0 b;

    private p0() {
    }

    public static final void a(Context context) {
        y45.j(context, "context");
        synchronized (a) {
            try {
                if (b == null) {
                    Context applicationContext = context.getApplicationContext();
                    Activity activity = null;
                    Application application = applicationContext instanceof Application ? (Application) applicationContext : null;
                    if (application != null) {
                        Activity activity2 = context instanceof Activity ? (Activity) context : null;
                        if (activity2 != null && !activity2.isFinishing() && !activity2.isDestroyed()) {
                            activity = activity2;
                        }
                        q0 q0Var = new q0(new s0(activity));
                        b = q0Var;
                        application.registerActivityLifecycleCallbacks(q0Var);
                    }
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final Activity b() {
        Activity activityB;
        synchronized (a) {
            q0 q0Var = b;
            activityB = q0Var != null ? q0Var.b() : null;
        }
        return activityB;
    }

    public static final Activity a() {
        Activity activityA;
        synchronized (a) {
            q0 q0Var = b;
            activityA = q0Var != null ? q0Var.a() : null;
        }
        return activityA;
    }
}
