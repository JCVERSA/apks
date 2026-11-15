package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.rx5;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.selects.SelectImplementation;

@defpackage.nt1(c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1", f = "SdkBidderTokenLoader.kt", l = {106, 75, 80}, m = "invokeSuspend")
final class fu1 extends SuspendLambda implements s74 {
    f5 b;
    gu1 c;
    dl d;
    int e;
    private Object f;
    final gu1 g;
    final dl h;
    final at i;

    @defpackage.nt1(c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1$1", f = "SdkBidderTokenLoader.kt", l = {}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        final at b;
        final s52 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(at atVar, s52 s52Var, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.b = atVar;
            this.c = s52Var;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new a(this.b, this.c, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return new a(this.b, this.c, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            kotlin.c.b(obj);
            this.b.onBidderTokenLoaded(this.c.a());
            return zfb.a;
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1$2", f = "SdkBidderTokenLoader.kt", l = {}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        final at b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(at atVar, defpackage.wh1<? super b> wh1Var) {
            super(2, wh1Var);
            this.b = atVar;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new b(this.b, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return new b(this.b, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            kotlin.c.b(obj);
            this.b.a();
            return zfb.a;
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1$tokenResult$1$stubReason$1$1", f = "SdkBidderTokenLoader.kt", l = {54}, m = "invokeSuspend")
    public static final class c extends SuspendLambda implements s74 {
        int b;

        public c(defpackage.wh1<? super c> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new c(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return new c((defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                this.b = 1;
                if (DelayKt.b(2000L, this) == objF) {
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

    @defpackage.nt1(c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1$tokenResult$1$stubReason$1$2", f = "SdkBidderTokenLoader.kt", l = {}, m = "invokeSuspend")
    public static final class d extends SuspendLambda implements e74 {
        public d(defpackage.wh1<? super d> wh1Var) {
            super(1, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(defpackage.wh1<?> wh1Var) {
            return new d(wh1Var);
        }

        @Override
        public final Object invoke(Object obj) {
            new d((defpackage.wh1) obj);
            zfb zfbVar = zfb.a;
            z45.f();
            kotlin.c.b(zfbVar);
            return hu1.d;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            kotlin.c.b(obj);
            return hu1.d;
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1$tokenResult$1$stubReason$1$3", f = "SdkBidderTokenLoader.kt", l = {60}, m = "invokeSuspend")
    public static final class e extends SuspendLambda implements s74 {
        int b;
        final gu1 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(gu1 gu1Var, defpackage.wh1<? super e> wh1Var) {
            super(2, wh1Var);
            this.c = gu1Var;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new e(this.c, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return new e(this.c, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                wv1 wv1Var = this.c.f;
                gl0 gl0Var = gl0.c;
                this.b = 1;
                obj = wv1Var.a(this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return obj;
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.bidder.SdkBidderTokenLoader$loadBidderToken$1$tokenResult$1$stubReason$1$4", f = "SdkBidderTokenLoader.kt", l = {}, m = "invokeSuspend")
    public static final class f extends SuspendLambda implements s74 {
        boolean b;

        public f(defpackage.wh1<? super f> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            f fVar = new f(wh1Var);
            fVar.b = ((Boolean) obj).booleanValue();
            return fVar;
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            f fVar = new f((defpackage.wh1) obj2);
            fVar.b = bool.booleanValue();
            return fVar.invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            kotlin.c.b(obj);
            boolean z = this.b;
            hu1 hu1Var = hu1.c;
            if (z) {
                return null;
            }
            return hu1Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fu1(gu1 gu1Var, dl dlVar, at atVar, defpackage.wh1<? super fu1> wh1Var) {
        super(2, wh1Var);
        this.g = gu1Var;
        this.h = dlVar;
        this.i = atVar;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        fu1 fu1Var = new fu1(this.g, this.h, this.i, wh1Var);
        fu1Var.f = obj;
        return fu1Var;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((fu1) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        g5 g5Var;
        f5 f5Var;
        Object objL;
        dl dlVar;
        gu1 gu1Var;
        Object objF = z45.f();
        int i = this.e;
        if (i != 0) {
            if (i == 1) {
                dl dlVar2 = this.d;
                gu1Var = this.c;
                f5 f5Var2 = this.b;
                g5 g5Var2 = (g5) this.f;
                kotlin.c.b(obj);
                dlVar = dlVar2;
                f5Var = f5Var2;
                g5Var = g5Var2;
                objL = obj;
            } else {
                if (i != 2 && i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            this.g.g.a(xq0.b, this.g);
            return zfb.a;
        }
        kotlin.c.b(obj);
        defpackage.nk1 nk1Var = (defpackage.nk1) this.f;
        this.g.g.b(xq0.b, this.g);
        g5Var = this.g.c;
        f5Var = f5.z;
        gu1 gu1Var2 = this.g;
        dl dlVar3 = this.h;
        g5Var.getClass();
        y45.j(f5Var, "adLoadingPhaseType");
        g5Var.a(f5Var, null);
        SelectImplementation selectImplementation = new SelectImplementation(getContext());
        selectImplementation.q(defpackage.el0.d(nk1Var, null, null, new c(null), 3, null).getOnJoin(), new d(null));
        selectImplementation.r(defpackage.el0.b(nk1Var, null, null, new e(gu1Var2, null), 3, null).n(), new f(null));
        this.f = g5Var;
        this.b = f5Var;
        this.c = gu1Var2;
        this.d = dlVar3;
        this.e = 1;
        objL = selectImplementation.l(this);
        if (objL == objF) {
            return objF;
        }
        dlVar = dlVar3;
        gu1Var = gu1Var2;
        hu1 hu1Var = (hu1) objL;
        s52 s52Var = new s52(gu1Var.h.a(gu1Var.b, gu1Var.e, gu1Var.d.c(), dlVar, hu1Var), hu1Var);
        g5Var.a(f5Var);
        if (s52Var.a() != null) {
            this.g.i.a(this.h, s52Var.b());
            rx5 rx5VarB = qu.b();
            a aVar = new a(this.i, s52Var, null);
            this.f = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = 2;
            if (defpackage.cl0.g(rx5VarB, aVar, this) == objF) {
                return objF;
            }
        } else {
            this.g.i.a(this.h);
            rx5 rx5VarB2 = qu.b();
            b bVar = new b(this.i, null);
            this.f = null;
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = 3;
            if (defpackage.cl0.g(rx5VarB2, bVar, this) == objF) {
                return objF;
            }
        }
        this.g.g.a(xq0.b, this.g);
        return zfb.a;
    }
}
