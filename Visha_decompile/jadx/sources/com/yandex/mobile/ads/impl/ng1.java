package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.SystemClock;
import defpackage.y45;

final class ng1 implements mg1 {
    private final boolean b;
    private final Handler c;
    private b d;
    private og1 e;
    private m52 f;
    private long g;
    private long h;
    private long i;

    public final class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            ng1.b(ng1.this);
            ng1.this.a();
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.yandex.mobile.ads.impl.ng1$b[], still in use, count: 1, list:
      (r0v1 com.yandex.mobile.ads.impl.ng1$b[]) from 0x0024: INVOKE (r0v1 com.yandex.mobile.ads.impl.ng1$b[]) STATIC call: kotlin.enums.a.a(java.lang.Enum[]):db3 A[MD:(java.lang.Enum[]):db3 (m)]
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
    public static final class b {
        b,
        c,
        d;

        static {
            kotlin.enums.a.a(bVarArr);
        }

        private b() {
            super(str, i);
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) e.clone();
        }
    }

    public ng1(boolean z, Handler handler) {
        y45.j(handler, "handler");
        this.b = z;
        this.c = handler;
        this.d = b.b;
    }

    public static final void b(ng1 ng1Var) {
        ng1Var.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = jElapsedRealtime - ng1Var.i;
        ng1Var.i = jElapsedRealtime;
        long j2 = ng1Var.g - j;
        ng1Var.g = j2;
        long jMax = (long) Math.max(0.0d, j2);
        m52 m52Var = ng1Var.f;
        if (m52Var != null) {
            m52Var.a(jMax, ng1Var.h - jMax);
        }
    }

    public static final void c(ng1 ng1Var) {
        y45.j(ng1Var, "this$0");
        ng1Var.a();
    }

    @Override
    public final void invalidate() {
        b bVar = b.b;
        if (bVar == this.d) {
            return;
        }
        this.d = bVar;
        this.e = null;
        this.c.removeCallbacksAndMessages(null);
    }

    @Override
    public final void pause() {
        if (b.c == this.d) {
            this.d = b.d;
            this.c.removeCallbacksAndMessages(null);
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.i;
            this.i = jElapsedRealtime;
            long j2 = this.g - j;
            this.g = j2;
            long jMax = (long) Math.max(0.0d, j2);
            m52 m52Var = this.f;
            if (m52Var != null) {
                m52Var.a(jMax, this.h - jMax);
            }
        }
    }

    @Override
    public final void resume() {
        if (b.d == this.d) {
            a();
        }
    }

    @Override
    public final void stop() {
        invalidate();
    }

    public final void a() {
        this.d = b.c;
        this.i = SystemClock.elapsedRealtime();
        long jMin = (long) Math.min(200.0d, this.g);
        if (jMin > 0) {
            this.c.postDelayed(new a(), jMin);
            return;
        }
        og1 og1Var = this.e;
        if (og1Var != null) {
            og1Var.a();
        }
        invalidate();
    }

    @Override
    public final void a(m52 m52Var) {
        this.f = m52Var;
    }

    @Override
    public final void a(long j, og1 og1Var) {
        invalidate();
        this.e = og1Var;
        this.g = j;
        this.h = j;
        if (this.b) {
            this.c.post(new Runnable() {
                @Override
                public final void run() {
                    ng1.c(this.b);
                }
            });
        } else {
            a();
        }
    }
}
