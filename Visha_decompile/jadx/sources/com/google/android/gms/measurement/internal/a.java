package com.google.android.gms.measurement.internal;

import android.os.Handler;
import defpackage.uoi;
import defpackage.vdf;
import defpackage.wd8;

public abstract class a {
    public static volatile Handler d;
    public final uoi a;
    public final Runnable b;
    public volatile long c;

    public a(uoi uoiVar) {
        wd8.l(uoiVar);
        this.a = uoiVar;
        this.b = new zzao(this, uoiVar);
    }

    public final void b() {
        this.c = 0L;
        f().removeCallbacks(this.b);
    }

    public abstract void c();

    public final void d(long j) {
        b();
        if (j >= 0) {
            this.c = this.a.c().currentTimeMillis();
            if (f().postDelayed(this.b, j)) {
                return;
            }
            this.a.b().q().b("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public final boolean e() {
        return this.c != 0;
    }

    public final Handler f() {
        Handler handler;
        if (d != null) {
            return d;
        }
        synchronized (a.class) {
            try {
                if (d == null) {
                    d = new vdf(this.a.e().getMainLooper());
                }
                handler = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }
}
