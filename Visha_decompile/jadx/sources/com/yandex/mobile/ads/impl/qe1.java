package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.yandex.mobile.ads.impl.qe1;
import defpackage.e84;
import defpackage.x74;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.FunctionReferenceImpl;

public final class qe1 {
    public static final a g = new a(0);
    private static final long h = TimeUnit.SECONDS.toMillis(1);
    private static volatile qe1 i;
    private final Object a;
    private final Handler b;
    private final pe1 c;
    private final ne1 d;
    private boolean e;
    private boolean f;

    public static final class a {
        private a() {
        }

        public final qe1 a(Context context) {
            y45.j(context, "context");
            qe1 qe1Var = qe1.i;
            if (qe1Var == null) {
                synchronized (this) {
                    qe1Var = qe1.i;
                    if (qe1Var == null) {
                        qe1Var = new qe1(context, 0);
                        qe1.i = qe1Var;
                    }
                }
            }
            return qe1Var;
        }

        public a(int i) {
            this();
        }
    }

    public class b implements cb2, e84 {
        public b() {
        }

        @Override
        public final void a() {
            qe1.a(qe1.this);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof cb2) && (obj instanceof e84)) {
                return y45.e(getFunctionDelegate(), ((e84) obj).getFunctionDelegate());
            }
            return false;
        }

        @Override
        public final x74 getFunctionDelegate() {
            return new FunctionReferenceImpl(0, qe1.this, qe1.class, "onOmSdkJsControllerLoaded", "onOmSdkJsControllerLoaded()V", 0);
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }
    }

    private qe1(Context context) {
        this.a = new Object();
        this.b = new Handler(Looper.getMainLooper());
        this.c = new pe1(context);
        this.d = new ne1();
    }

    public static final void a(qe1 qe1Var) {
        synchronized (qe1Var.a) {
            qe1Var.f = true;
            zfb zfbVar = zfb.a;
        }
        qe1Var.d();
        qe1Var.d.b();
    }

    private final void c() {
        this.b.postDelayed(new Runnable() {
            @Override
            public final void run() {
                qe1.c(this.b);
            }
        }, h);
    }

    private final void b() {
        boolean z;
        synchronized (this.a) {
            try {
                if (this.e) {
                    z = false;
                } else {
                    z = true;
                    this.e = true;
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            c();
            this.c.a(new b());
        }
    }

    private final void d() {
        synchronized (this.a) {
            this.b.removeCallbacksAndMessages(null);
            this.e = false;
            zfb zfbVar = zfb.a;
        }
    }

    public static final void c(qe1 qe1Var) {
        y45.j(qe1Var, "this$0");
        qe1Var.c.a();
        synchronized (qe1Var.a) {
            qe1Var.f = true;
            zfb zfbVar = zfb.a;
        }
        qe1Var.d();
        qe1Var.d.b();
    }

    public qe1(Context context, int i2) {
        this(context);
    }

    public final void a(cb2 cb2Var) {
        y45.j(cb2Var, "listener");
        synchronized (this.a) {
            try {
                this.d.b(cb2Var);
                if (!this.d.a()) {
                    this.c.a();
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(cb2 cb2Var) {
        boolean z;
        y45.j(cb2Var, "listener");
        synchronized (this.a) {
            try {
                z = this.f;
                if (!z) {
                    this.d.a(cb2Var);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z) {
            b();
        } else {
            cb2Var.a();
        }
    }
}
