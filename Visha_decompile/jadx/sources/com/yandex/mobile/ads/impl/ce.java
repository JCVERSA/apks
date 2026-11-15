package com.yandex.mobile.ads.impl;

import android.os.Looper;
import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.jvm.internal.SuspendLambda;

public final class ce {
    private static final Object i = new Object();
    private static volatile ce j;
    public static final int k = 0;
    private final long a;
    private final long b;
    private final Set<e60> c;
    private final defpackage.nk1 d;
    private final ae e;
    private final be f;
    private final y42 g;
    private final AtomicBoolean h;

    @defpackage.nt1(c = "com.monetization.ads.core.anr.AnrTracker$startTracking$1", f = "AnrTracker.kt", l = {26, 27}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return ce.this.new a(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ce.this.new a((defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0032 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:16:0x003b  */
        /* JADX WARN: Code duplicated, block: B:18:0x0049 A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0047 -> B:11:0x001e). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:16:0x003b
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = defpackage.z45.f()
                int r1 = r6.b
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto Lf
                goto L1b
            Lf:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L17:
                kotlin.c.b(r7)
                goto L33
            L1b:
                kotlin.c.b(r7)
            L1e:
                com.yandex.mobile.ads.impl.ce r7 = com.yandex.mobile.ads.impl.ce.this
                com.yandex.mobile.ads.impl.ae r7 = com.yandex.mobile.ads.impl.ce.a(r7)
                com.yandex.mobile.ads.impl.ce r1 = com.yandex.mobile.ads.impl.ce.this
                long r4 = com.yandex.mobile.ads.impl.ce.c(r1)
                r6.b = r3
                java.lang.Object r7 = r7.a(r4, r6)
                if (r7 != r0) goto L33
                return r0
            L33:
                java.lang.Boolean r7 = (java.lang.Boolean) r7
                boolean r7 = r7.booleanValue()
                if (r7 == 0) goto L4a
                com.yandex.mobile.ads.impl.ce r7 = com.yandex.mobile.ads.impl.ce.this
                long r4 = com.yandex.mobile.ads.impl.ce.b(r7)
                r6.b = r2
                java.lang.Object r7 = kotlinx.coroutines.DelayKt.b(r4, r6)
                if (r7 != r0) goto L1e
                return r0
            L4a:
                com.yandex.mobile.ads.impl.ce r7 = com.yandex.mobile.ads.impl.ce.this
                com.yandex.mobile.ads.impl.ce.f(r7)
                com.yandex.mobile.ads.impl.ce r6 = com.yandex.mobile.ads.impl.ce.this
                java.util.concurrent.atomic.AtomicBoolean r6 = com.yandex.mobile.ads.impl.ce.d(r6)
                r7 = 0
                r6.set(r7)
                zfb r6 = defpackage.zfb.a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.yandex.mobile.ads.impl.ce.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private ce(long j2, long j3, Set<e60> set, defpackage.nk1 nk1Var, ae aeVar, be beVar, y42 y42Var) {
        this.a = j2;
        this.b = j3;
        this.c = set;
        this.d = nk1Var;
        this.e = aeVar;
        this.f = beVar;
        this.g = y42Var;
        this.h = new AtomicBoolean(false);
    }

    public static final void f(ce ceVar) {
        ceVar.g.getClass();
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        y45.i(allStackTraces, "getAllStackTraces(...)");
        StackTraceElement[] stackTraceElementArr = allStackTraces.get(Looper.getMainLooper().getThread());
        if (stackTraceElementArr == null || !j22.a(stackTraceElementArr, ceVar.c)) {
            return;
        }
        ceVar.f.a(allStackTraces);
    }

    public final void c() {
        if (this.h.getAndSet(true)) {
            return;
        }
        defpackage.el0.d(this.d, null, null, new a(null), 3, null);
    }

    public ce(long j2, long j3, Set set, defpackage.nk1 nk1Var, ae aeVar, be beVar, y42 y42Var, int i2) {
        this(j2, j3, set, nk1Var, aeVar, beVar, y42Var);
    }
}
