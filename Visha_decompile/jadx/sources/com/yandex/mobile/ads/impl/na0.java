package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.e74;
import defpackage.gx9;
import defpackage.kw6;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Lambda;

public final class na0 {
    private final o3 a;
    private final kw6 b;
    private final defpackage.nk1 c;
    private bt d;
    private final gx9 e;
    private final AtomicInteger f;

    @defpackage.nt1(c = "com.monetization.ads.feed.ui.FeedViewModel$observeLoadingState$1", f = "FeedViewModel.kt", l = {93}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;
        private Object c;

        public static final class C0324a extends Lambda implements e74 {
            public static final C0324a b = new C0324a();

            public C0324a() {
                super(1);
            }

            @Override
            public final Object invoke(Object obj) {
                la0 la0Var = (la0) obj;
                y45.j(la0Var, "<name for destructuring parameter 0>");
                return la0Var.a();
            }
        }

        public static final class b<T> implements oz3 {
            final na0 a;
            final defpackage.nk1 b;

            public b(na0 na0Var, defpackage.nk1 nk1Var) {
                this.a = na0Var;
                this.b = nk1Var;
            }

            @Override
            public final Object emit(Object obj, defpackage.wh1 wh1Var) {
                la0 la0Var = (la0) obj;
                ea0 ea0VarC = la0Var.c();
                if (ea0VarC instanceof ea0.a) {
                    w3 w3VarA = ((ea0.a) la0Var.c()).a();
                    bt btVarB = this.a.b();
                    if (btVarB != null) {
                        btVarB.a(w3VarA);
                    }
                    kotlinx.coroutines.d.e(this.b, w3VarA.d(), null, 2, null);
                } else if (ea0VarC instanceof ea0.c) {
                    bt btVarB2 = this.a.b();
                    if (btVarB2 != null) {
                        btVarB2.onAdLoaded();
                    }
                } else if (!(ea0VarC instanceof ea0.b)) {
                    boolean z = ea0VarC instanceof ea0.d;
                }
                return zfb.a;
            }
        }

        public a(defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            a aVar = na0.this.new a(wh1Var);
            aVar.c = obj;
            return aVar;
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            a aVar = na0.this.new a((defpackage.wh1) obj2);
            aVar.c = (defpackage.nk1) obj;
            return aVar.invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                defpackage.nk1 nk1Var = (defpackage.nk1) this.c;
                nz3 nz3VarJ = sz3.j(na0.this.c(), C0324a.b);
                b bVar = new b(na0.this, nk1Var);
                this.b = 1;
                if (nz3VarJ.collect(bVar, this) == objF) {
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

    @defpackage.nt1(c = "com.monetization.ads.feed.ui.FeedViewModel$onFeedItemVisible$1", f = "FeedViewModel.kt", l = {86}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        int b;

        public b(defpackage.wh1<? super b> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return na0.this.new b(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return na0.this.new b((defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                kw6 kw6Var = na0.this.b;
                m90.a aVar = m90.a.a;
                this.b = 1;
                if (kw6Var.emit(aVar, this) == objF) {
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

    @defpackage.nt1(c = "com.monetization.ads.feed.ui.FeedViewModel$preloadAd$1", f = "FeedViewModel.kt", l = {77}, m = "invokeSuspend")
    public static final class c extends SuspendLambda implements s74 {
        int b;

        public c(defpackage.wh1<? super c> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return na0.this.new c(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return na0.this.new c((defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                kw6 kw6Var = na0.this.b;
                m90.a aVar = m90.a.a;
                this.b = 1;
                if (kw6Var.emit(aVar, this) == objF) {
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

    public na0(Context context, en2 en2Var, v7 v7Var, k90 k90Var, l90 l90Var, o3 o3Var, kw6 kw6Var, w90 w90Var, x90 x90Var, ba0 ba0Var, j01 j01Var, y90 y90Var, da0 da0Var, t90 t90Var, defpackage.nk1 nk1Var) {
        y45.j(context, "appContext");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(v7Var, "adRequestData");
        y45.j(k90Var, "divContextProvider");
        y45.j(l90Var, "divViewPreloader");
        y45.j(o3Var, "adConfiguration");
        y45.j(kw6Var, "feedInputEventFlow");
        y45.j(w90Var, "feedItemLoadControllerCreator");
        y45.j(x90Var, "feedItemLoadDataSource");
        y45.j(ba0Var, "feedItemPreloadDataSource");
        y45.j(j01Var, "memoryUtils");
        y45.j(y90Var, "loadEnoughMemoryValidator");
        y45.j(da0Var, "feedItemsRepository");
        y45.j(t90Var, "feedItemListUseCase");
        y45.j(nk1Var, "coroutineScope");
        this.a = o3Var;
        this.b = kw6Var;
        this.c = nk1Var;
        this.e = t90Var.a();
        this.f = new AtomicInteger(-1);
        e();
    }

    private final void e() {
        defpackage.el0.d(this.c, null, null, new a(null), 3, null);
    }

    public final bt b() {
        return this.d;
    }

    public final gx9 c() {
        return this.e;
    }

    public final AtomicInteger d() {
        return this.f;
    }

    public final void f() {
        if (((la0) this.e.getValue()).b().isEmpty() && this.f.get() == -1 && !(((la0) this.e.getValue()).c() instanceof ea0.a)) {
            this.f.getAndIncrement();
            defpackage.el0.d(this.c, null, null, new c(null), 3, null);
            return;
        }
        w3 w3VarS = w7.s();
        bt btVar = this.d;
        if (btVar != null) {
            btVar.a(w3VarS);
        }
    }

    public final o3 a() {
        return this.a;
    }

    public final void a(int i) {
        if ((((la0) this.e.getValue()).c() instanceof ea0.a) || i != this.f.get()) {
            return;
        }
        this.f.getAndIncrement();
        defpackage.el0.d(this.c, null, null, new b(null), 3, null);
    }

    public final void a(d90 d90Var) {
        this.d = d90Var;
    }
}
