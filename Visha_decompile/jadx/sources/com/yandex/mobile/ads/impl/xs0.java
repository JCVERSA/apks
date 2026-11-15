package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.location.Location;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class xs0 {
    private static final Object f = new Object();
    private static volatile xs0 g;
    public static final int h = 0;
    private final at0 a;
    private final zs0 b;
    private final pw1 c;
    private final kx1 d;
    private final Context e;

    public static final class a {
        public static xs0 a(Context context) {
            y45.j(context, "context");
            if (xs0.g == null) {
                synchronized (xs0.f) {
                    try {
                        if (xs0.g == null) {
                            xs0.g = new xs0(context);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            xs0 xs0Var = xs0.g;
            if (xs0Var != null) {
                return xs0Var;
            }
            throw new IllegalStateException("Required value was null.");
        }
    }

    public xs0(Context context) {
        at0 at0Var = new at0();
        zs0 zs0Var = new zs0();
        int i = pw1.l;
        this(context, at0Var, zs0Var, pw1.a.a(), new kx1());
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0053  */
    public final Location c() {
        Location locationA;
        synchronized (f) {
            try {
                if (this.c.d()) {
                    kx1 kx1Var = this.d;
                    Context context = this.e;
                    kx1Var.getClass();
                    y45.j(context, "context");
                    if (kx1.a(context)) {
                        locationA = null;
                    } else {
                        zs0 zs0Var = this.b;
                        Context context2 = this.e;
                        zs0Var.getClass();
                        ArrayList arrayListA = zs0.a(context2);
                        List listC = defpackage.x71.c();
                        Iterator it = arrayListA.iterator();
                        while (it.hasNext()) {
                            Location locationA2 = ((ys0) it.next()).a();
                            if (locationA2 != null) {
                                listC.add(locationA2);
                            }
                        }
                        locationA = this.a.a(defpackage.x71.a(listC));
                    }
                } else {
                    locationA = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return locationA;
    }

    private xs0(Context context, at0 at0Var, zs0 zs0Var, pw1 pw1Var, kx1 kx1Var) {
        this.a = at0Var;
        this.b = zs0Var;
        this.c = pw1Var;
        this.d = kx1Var;
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this.e = applicationContext;
    }
}
