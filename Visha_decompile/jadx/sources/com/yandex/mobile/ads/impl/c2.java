package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.impl.c2;
import defpackage.y45;
import defpackage.zfb;

public final class c2 {
    private static final Object f = new Object();
    private static volatile c2 g;
    public static final int h = 0;
    private final zf0 a;
    private final h2 b;
    private final f2 c;
    private boolean d;
    private final e2 e;

    public static final class a {
        public static c2 a(Context context) {
            y45.j(context, "context");
            if (c2.g == null) {
                synchronized (c2.f) {
                    try {
                        if (c2.g == null) {
                            c2.g = new c2(context, new zf0(context), new h2(context), new f2());
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            c2 c2Var = c2.g;
            if (c2Var != null) {
                return c2Var;
            }
            throw new IllegalStateException("Required value was null.");
        }
    }

    public c2(Context context, zf0 zf0Var, h2 h2Var, f2 f2Var) {
        y45.j(context, "context");
        y45.j(zf0Var, "hostAccessAdBlockerDetectionController");
        y45.j(h2Var, "adBlockerDetectorRequestPolicyChecker");
        y45.j(f2Var, "adBlockerDetectorListenerRegistry");
        this.a = zf0Var;
        this.b = h2Var;
        this.c = f2Var;
        this.e = new e2() {
            @Override
            public final void a() {
                c2.b(this.a);
            }
        };
    }

    public static final void b(c2 c2Var) {
        y45.j(c2Var, "this$0");
        synchronized (f) {
            c2Var.d = false;
            zfb zfbVar = zfb.a;
        }
        c2Var.c.a();
    }

    public final void a(e2 e2Var) {
        y45.j(e2Var, "listener");
        synchronized (f) {
            this.c.b(e2Var);
            zfb zfbVar = zfb.a;
        }
    }

    public final void b(e2 e2Var) {
        boolean z;
        y45.j(e2Var, "listener");
        g2 g2VarA = this.b.a();
        if (g2VarA != null) {
            synchronized (f) {
                try {
                    if (this.d) {
                        z = false;
                    } else {
                        z = true;
                        this.d = true;
                    }
                    this.c.a(e2Var);
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                this.a.a(this.e, g2VarA);
                return;
            }
            return;
        }
        ((b2.a.b) e2Var).a();
    }
}
