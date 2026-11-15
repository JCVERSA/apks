package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.location.Location;
import defpackage.y45;

public final class ge0 implements ys0 {
    private final dt0 a;
    private final Object b;

    public ge0(Context context, String str) {
        this(context, str, new dt0(context, str));
    }

    @Override
    public final Location a() {
        Location locationA;
        synchronized (this.b) {
            ct0 ct0VarB = this.a.b();
            if (ct0VarB == null || !ct0VarB.b()) {
                locationA = null;
            } else {
                locationA = ct0VarB.a();
                this.a.c();
            }
        }
        return locationA;
    }

    public ge0(Context context, String str, dt0 dt0Var) {
        y45.j(context, "context");
        y45.j(str, "locationServicesClassName");
        y45.j(dt0Var, "locationTaskManager");
        this.a = dt0Var;
        this.b = new Object();
    }
}
