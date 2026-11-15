package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class pw1 {
    private static final Object j = new Object();
    private static volatile pw1 k;
    public static final int l = 0;
    private ju1 a;
    private Boolean b;
    private Boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private Integer h;
    private boolean i;

    public static final class a {
        public static pw1 a() {
            pw1 pw1Var;
            pw1 pw1Var2 = pw1.k;
            if (pw1Var2 != null) {
                return pw1Var2;
            }
            synchronized (pw1.j) {
                pw1Var = pw1.k;
                if (pw1Var == null) {
                    pw1Var = new pw1(0);
                    pw1.k = pw1Var;
                }
            }
            return pw1Var;
        }
    }

    private pw1() {
        this.f = true;
        this.g = true;
    }

    public static void c() {
        synchronized (j) {
        }
    }

    public final boolean d() {
        boolean z;
        synchronized (j) {
            z = this.i;
        }
        return z;
    }

    public final Integer e() {
        Integer num;
        synchronized (j) {
            num = this.h;
        }
        return num;
    }

    public final Boolean f() {
        Boolean bool;
        synchronized (j) {
            bool = this.c;
        }
        return bool;
    }

    public final boolean g() {
        boolean z;
        synchronized (j) {
            z = this.g;
        }
        return z;
    }

    public final boolean h() {
        boolean z;
        synchronized (j) {
            z = this.d;
        }
        return z;
    }

    public final boolean i() {
        boolean z;
        synchronized (j) {
            z = this.e;
        }
        return z;
    }

    public final Boolean j() {
        Boolean bool;
        synchronized (j) {
            bool = this.b;
        }
        return bool;
    }

    public final boolean k() {
        boolean z;
        synchronized (j) {
            z = this.f;
        }
        return z;
    }

    public final ju1 a(Context context) {
        ju1 ju1Var;
        y45.j(context, "context");
        synchronized (j) {
            try {
                if (this.a == null) {
                    lr.a.getClass();
                    this.a = lr.a.a(context).a();
                }
                ju1Var = this.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ju1Var;
    }

    public final void b(boolean z) {
        synchronized (j) {
            this.d = z;
            this.e = z;
            this.f = z;
            zfb zfbVar = zfb.a;
        }
    }

    public final void c(boolean z) {
        synchronized (j) {
            this.c = Boolean.valueOf(z);
            zfb zfbVar = zfb.a;
        }
    }

    public final void d(boolean z) {
        synchronized (j) {
            this.g = z;
            zfb zfbVar = zfb.a;
        }
    }

    public final void e(boolean z) {
        synchronized (j) {
            this.i = z;
            zfb zfbVar = zfb.a;
        }
    }

    public final void f(boolean z) {
        synchronized (j) {
            this.b = Boolean.valueOf(z);
            zfb zfbVar = zfb.a;
        }
    }

    public pw1(int i) {
        this();
    }

    public final void a(Context context, ju1 ju1Var) {
        y45.j(context, "context");
        y45.j(ju1Var, "sdkConfiguration");
        synchronized (j) {
            this.a = ju1Var;
            lr.a.getClass();
            lr.a.a(context).a(ju1Var);
            zfb zfbVar = zfb.a;
        }
    }

    public final void a(Integer num) {
        synchronized (j) {
            this.h = num;
            zfb zfbVar = zfb.a;
        }
    }

    public final void a(boolean z) {
        synchronized (j) {
            this.d = z;
            this.f = z;
            zfb zfbVar = zfb.a;
        }
    }
}
