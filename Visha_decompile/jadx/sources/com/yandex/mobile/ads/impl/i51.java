package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.jvm.internal.SuspendLambda;

public final class i51 {
    private final o3 a;
    private final g5 b;
    private final defpackage.nk1 c;
    private final Context d;
    private final k51 e;
    private final v91 f;

    @VisibleForTesting
    public final class a implements Runnable {
        private final o8<?> b;
        private final y61 c;
        private final s51 d;
        private final g51 e;
        private final ew f;
        final i51 g;

        public final class C0319a implements v91.a {
            private final g51 a;
            private final g5 b;
            final a c;

            public C0319a(a aVar, g51 g51Var, g5 g5Var) {
                y45.j(g51Var, "nativeAdCreationListener");
                y45.j(g5Var, "adLoadingPhasesManager");
                this.c = aVar;
                this.a = g51Var;
                this.b = g5Var;
            }

            @Override
            public final void a(yk1 yk1Var, s41 s41Var) {
                y45.j(yk1Var, "imageProvider");
                y45.j(s41Var, "nativeAdBlock");
                this.b.a(f5.p);
                defpackage.nk1 nk1Var = this.c.g.c;
                a aVar = this.c;
                defpackage.el0.d(nk1Var, null, null, new h51(aVar.g, s41Var, yk1Var, aVar, this, null), 3, null);
            }
        }

        public a(i51 i51Var, o8<?> o8Var, y61 y61Var, s51 s51Var, g51 g51Var) {
            y45.j(o8Var, "adResponse");
            y45.j(s51Var, "nativeAdFactoriesProvider");
            y45.j(g51Var, "nativeAdCreationListener");
            this.g = i51Var;
            this.b = o8Var;
            this.c = y61Var;
            this.d = s51Var;
            this.e = g51Var;
            this.f = new fw(i51Var.d, i51Var.a, new er1().b(o8Var, i51Var.a)).a();
        }

        @Override
        public final void run() {
            try {
                y61 y61Var = this.c;
                if (y61Var == null) {
                    this.e.a(w7.k());
                } else if (y61Var.e().isEmpty()) {
                    this.e.a(w7.q());
                } else {
                    s41 s41Var = new s41(this.b, this.g.a, this.c);
                    C0319a c0319a = new C0319a(this, this.e, this.g.b);
                    g5 g5Var = this.g.b;
                    f5 f5Var = f5.p;
                    g5Var.getClass();
                    y45.j(f5Var, "adLoadingPhaseType");
                    g5Var.a(f5Var, null);
                    this.g.f.a(this.g.d, this.g.a, s41Var, c0319a, this.f, this.e);
                }
            } catch (Exception unused) {
                sp0.c(new Object[0]);
                this.e.a(w7.k());
            }
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.nativeads.creator.NativeAdCreationManager$createNativeAd$1", f = "NativeAdCreationManager.kt", l = {}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        final o8<?> c;
        final y61 d;
        final s51 e;
        final g51 f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(o8<?> o8Var, y61 y61Var, s51 s51Var, g51 g51Var, defpackage.wh1<? super b> wh1Var) {
            super(2, wh1Var);
            this.c = o8Var;
            this.d = y61Var;
            this.e = s51Var;
            this.f = g51Var;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return i51.this.new b(this.c, this.d, this.e, this.f, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((b) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            kotlin.c.b(obj);
            new a(i51.this, this.c, this.d, this.e, this.f).run();
            return zfb.a;
        }
    }

    public i51(Context context, bv1 bv1Var, o3 o3Var, g5 g5Var, defpackage.nk1 nk1Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        eb1 eb1Var = new eb1(o3Var, context, g5Var);
        e51 e51Var = new e51(eb1Var);
        this(context, bv1Var, o3Var, g5Var, nk1Var, applicationContext, eb1Var, e51Var, new k51(o3Var, bv1Var, e51Var), new v91(context, bv1Var, g5Var, e51Var, nk1Var));
    }

    public final void a(o8<?> o8Var, y61 y61Var, s51 s51Var, g51 g51Var) {
        y45.j(o8Var, "adResponse");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(g51Var, "nativeAdCreationListener");
        defpackage.el0.d(this.c, null, null, new b(o8Var, y61Var, s51Var, g51Var, null), 3, null);
    }

    public final void a() {
        this.f.a();
    }

    public i51(Context context, bv1 bv1Var, o3 o3Var, g5 g5Var, defpackage.nk1 nk1Var, Context context2, eb1 eb1Var, e51 e51Var, k51 k51Var, v91 v91Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(nk1Var, "coroutineScope");
        y45.j(context2, "appContext");
        y45.j(eb1Var, "nativeVideoLoadController");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(k51Var, "nativeAdCreator");
        y45.j(v91Var, "nativeResourcesLoader");
        this.a = o3Var;
        this.b = g5Var;
        this.c = nk1Var;
        this.d = context2;
        this.e = k51Var;
        this.f = v91Var;
    }
}
