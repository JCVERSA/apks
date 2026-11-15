package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.TimeoutKt;

public final class r30 {
    private static final AtomicBoolean e = new AtomicBoolean(true);
    private final g5 a;
    private final Context b;
    private final n4 c;
    private final ig0 d;

    @defpackage.nt1(c = "com.monetization.ads.base.dns.DnsPrefetcher", f = "DnsPrefetcher.kt", l = {28}, m = "prefetch")
    public static final class a extends ContinuationImpl {
        g5 b;
        f5 c;
        Object d;
        int f;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.d = obj;
            this.f |= Integer.MIN_VALUE;
            return r30.this.a(this);
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.dns.DnsPrefetcher$prefetch$2$1", f = "DnsPrefetcher.kt", l = {34}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        int b;

        public b(defpackage.wh1<? super b> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return r30.this.new b(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return r30.this.new b((defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                List listA = r30.a(r30.this);
                if (listA.isEmpty()) {
                    sp0.a(new Object[0]);
                    return zfb.a;
                }
                r30 r30Var = r30.this;
                this.b = 1;
                r30Var.getClass();
                Object objC = TimeoutKt.c(2500L, new s30(r30Var, listA, null), this);
                if (objC != z45.f()) {
                    objC = zfb.a;
                }
                if (objC == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return zfb.a;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public r30(Context context, g5 g5Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, g5Var, applicationContext, new n4(), new ig0());
    }

    public static final List a(r30 r30Var) {
        r30Var.getClass();
        List listC = defpackage.x71.c();
        w82.a aVar = w82.a;
        String strA = r30Var.c.a(r30Var.b);
        aVar.getClass();
        String strA2 = w82.a.a(strA);
        if (strA2 != null) {
            listC.add(strA2);
        }
        return defpackage.x71.a(listC);
    }

    public r30(Context context, g5 g5Var, Context context2, n4 n4Var, ig0 ig0Var) {
        y45.j(context, "context");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(context2, "appContext");
        y45.j(n4Var, "adHostConfigurator");
        y45.j(ig0Var, "hostReachabilityRepository");
        this.a = g5Var;
        this.b = context2;
        this.c = n4Var;
        this.d = ig0Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.wh1<? super zfb> wh1Var) {
        a aVar;
        g5 g5Var;
        Throwable th;
        f5 f5Var;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.f = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object obj = aVar.d;
        Object objF = z45.f();
        int i2 = aVar.f;
        if (i2 == 0) {
            kotlin.c.b(obj);
            if (e.getAndSet(false)) {
                g5 g5Var2 = this.a;
                f5 f5Var2 = f5.B;
                g5Var2.b(f5Var2);
                try {
                    kotlinx.coroutines.c cVarA = qu.a();
                    b bVar = new b(null);
                    aVar.b = g5Var2;
                    aVar.c = f5Var2;
                    aVar.f = 1;
                    if (defpackage.cl0.g(cVarA, bVar, aVar) == objF) {
                        return objF;
                    }
                    g5Var = g5Var2;
                    f5Var = f5Var2;
                    zfb zfbVar = zfb.a;
                    g5Var.a(f5Var);
                } catch (Throwable th2) {
                    g5Var = g5Var2;
                    th = th2;
                    f5Var = f5Var2;
                    th.getMessage();
                    sp0.a(new Object[0]);
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f5Var = aVar.c;
            g5Var = aVar.b;
            try {
                kotlin.c.b(obj);
            } catch (Throwable th3) {
                th = th3;
                th.getMessage();
                sp0.a(new Object[0]);
            }
            zfb zfbVar2 = zfb.a;
            g5Var.a(f5Var);
        }
        return zfb.a;
    }

    public final void a(String str) {
        if (this.d.a(2000, str)) {
            sp0.a(new Object[0]);
        } else {
            sp0.a(new Object[0]);
        }
    }
}
