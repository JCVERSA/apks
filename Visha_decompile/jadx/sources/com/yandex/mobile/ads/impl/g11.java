package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.impl.g11;
import defpackage.v6a;
import defpackage.y45;
import defpackage.zfb;

public final class g11 {
    private static final Object f = new Object();
    private static volatile g11 g;
    public static final int h = 0;
    private final b11 a;
    private final f11 b;
    private final nv1 c;
    private final bv1 d;
    private c e;

    public static final class a {
        public static g11 a(bv1 bv1Var) {
            y45.j(bv1Var, "sdkEnvironmentModule");
            if (g11.g == null) {
                synchronized (g11.f) {
                    try {
                        if (g11.g == null) {
                            g11.g = new g11(new b11(new c11()), new f11(), new nv1(), bv1Var);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            g11 g11Var = g11.g;
            if (g11Var != null) {
                return g11Var;
            }
            throw new IllegalStateException("Required value was null.");
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.g11$c[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.g11$c[]) from 0x0024: INVOKE (r0v1 com.yandex.mobile.ads.impl.g11$c[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c {
        b,
        c,
        d;

        static {
            kotlin.enums.a.a(cVarArr);
        }

        private c() {
            super(str, i);
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) e.clone();
        }
    }

    public g11(b11 b11Var, f11 f11Var, nv1 nv1Var, bv1 bv1Var) {
        this(b11Var, f11Var, nv1Var, bv1Var, c.b);
    }

    private g11(b11 b11Var, f11 f11Var, nv1 nv1Var, bv1 bv1Var, c cVar) {
        this.a = b11Var;
        this.b = f11Var;
        this.c = nv1Var;
        this.d = bv1Var;
        this.e = cVar;
    }

    private final void b(Context context, final dt dtVar) {
        boolean z;
        boolean z2;
        synchronized (f) {
            try {
                hl0 hl0Var = new hl0(this.a, dtVar);
                z = false;
                if (this.e == c.d) {
                    z2 = false;
                    z = true;
                } else {
                    this.b.a(hl0Var);
                    if (this.e == c.b) {
                        this.e = c.c;
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            this.a.b(new Runnable() {
                @Override
                public final void run() {
                    g11.a(dtVar);
                }
            });
        }
        if (z2) {
            b bVar = new b();
            nv1 nv1Var = this.c;
            bv1 bv1Var = this.d;
            nv1Var.getClass();
            y45.j(context, "context");
            y45.j(bv1Var, "sdkEnvironmentModule");
            y45.j(bVar, "sdkInitializationListener");
            this.a.a(new mv1(context, bv1Var, kotlinx.coroutines.d.a(v6a.b(null, 1, null).plus(qu.a())), bVar));
        }
    }

    public final void a(final Context context, final dt dtVar) {
        y45.j(context, "context");
        y45.j(dtVar, "initializationListener");
        p0.a(context);
        this.a.a(new Runnable() {
            @Override
            public final void run() {
                g11.a(this.b, context, dtVar);
            }
        });
    }

    public final class b implements ov1.a {
        public b() {
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "error");
            Object obj = g11.f;
            g11 g11Var = g11.this;
            synchronized (obj) {
                g11Var.e = c.b;
                zfb zfbVar = zfb.a;
            }
            g11.this.b.a();
        }

        @Override
        public final void a(jc jcVar, o50 o50Var) {
            y45.j(jcVar, "advertisingConfiguration");
            y45.j(o50Var, "environmentConfiguration");
            Object obj = g11.f;
            g11 g11Var = g11.this;
            synchronized (obj) {
                g11Var.e = c.d;
                zfb zfbVar = zfb.a;
            }
            g11.this.b.a();
        }
    }

    public static final void a(g11 g11Var, Context context, dt dtVar) {
        y45.j(g11Var, "this$0");
        y45.j(context, "$context");
        y45.j(dtVar, "$initializationListener");
        g11Var.b(context, dtVar);
    }

    public static final void a(dt dtVar) {
        y45.j(dtVar, "$initializationListener");
        dtVar.onInitializationCompleted();
    }
}
