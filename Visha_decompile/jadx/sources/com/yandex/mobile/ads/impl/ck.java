package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.monetization.ads.mediation.base.model.MediatedAdObjectInfo;
import com.transsion.livecaption.constant.ICode;
import com.yandex.mobile.ads.impl.ck;
import defpackage.c74;
import defpackage.e74;
import defpackage.rx5;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.Objects;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.mozilla.classfile.ByteCode;

public abstract class ck<T> implements gh1.b, ro, qk.a<o8<T>>, eq1 {
    private final Context a;
    private final g5 b;
    private final o3 c;
    private final defpackage.nk1 d;
    private final l7 e;
    private final Handler f;
    private final p82 g;
    private final kx1 h;
    private final ei i;
    private final fs0 j;
    private final ov1 k;
    private final mf0 l;
    private final gk1 m;
    private final j32 n;
    private final uq1 o;
    private final gh1 p;
    private final y3 q;
    private j5 r;
    private boolean s;
    private long t;
    private t3 u;
    private o8<T> v;

    @defpackage.nt1(c = "com.monetization.ads.base.BaseAdLoadController$fetchRequest$1", f = "BaseAdLoadController.kt", l = {}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        private Object b;
        final ck<T> c;
        final p82 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ck<T> ckVar, p82 p82Var, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.c = ckVar;
            this.d = p82Var;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            a aVar = new a(this.c, this.d, wh1Var);
            aVar.b = obj;
            return aVar;
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((a) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            kotlin.c.b(obj);
            defpackage.nk1 nk1Var = (defpackage.nk1) this.b;
            if (!this.c.a()) {
                String strA = this.d.a(this.c.f());
                if (strA == null || strA.length() == 0) {
                    this.c.b(w7.u());
                } else {
                    g5 g5VarI = this.c.i();
                    f5 f5Var = f5.t;
                    bk.a(g5VarI, f5Var, "adLoadingPhaseType", f5Var, null);
                    this.c.f().a(this.d.a());
                    o3 o3VarF = this.c.f();
                    uq1 uq1Var = ((ck) this.c).o;
                    Context contextL = this.c.l();
                    uq1Var.getClass();
                    y45.j(contextL, "context");
                    o3VarF.a(contextL.getResources().getConfiguration().orientation);
                    ak<T> akVarA = this.c.a(strA, this.d.a(this.c.l(), this.c.f(), ((ck) this.c).h));
                    akVarA.b((Object) oa.a(nk1Var));
                    this.c.g().a(akVarA);
                }
            }
            return zfb.a;
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.BaseAdLoadController$loadAutograb$1", f = "BaseAdLoadController.kt", l = {}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        final ck<T> b;
        final p82 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ck<T> ckVar, p82 p82Var, defpackage.wh1<? super b> wh1Var) {
            super(2, wh1Var);
            this.b = ckVar;
            this.c = p82Var;
        }

        public static final void a(ck ckVar, p82 p82Var, String str) {
            ckVar.i().a(f5.g);
            ckVar.f().b(str);
            ckVar.c(p82Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new b(this.b, this.c, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return new b(this.b, this.c, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            kotlin.c.b(obj);
            ei eiVar = ((ck) this.b).i;
            Context contextL = this.b.l();
            final ck<T> ckVar = this.b;
            final p82 p82Var = this.c;
            eiVar.a(contextL, new ii() {
                @Override
                public final void a(String str) {
                    ck.b.a(ckVar, p82Var, str);
                }
            });
            return zfb.a;
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.BaseAdLoadController$loadBiddingData$1", f = "BaseAdLoadController.kt", l = {ByteCode.ATHROW, 192}, m = "invokeSuspend")
    public static final class c extends SuspendLambda implements s74 {
        o3 b;
        int c;
        private Object d;
        final ck<T> e;
        final p82 f;
        final fl g;

        @defpackage.nt1(c = "com.monetization.ads.base.BaseAdLoadController$loadBiddingData$1$headerBiddingData$1", f = "BaseAdLoadController.kt", l = {188}, m = "invokeSuspend")
        public static final class a extends SuspendLambda implements s74 {
            int b;
            final ck<T> c;
            final fl d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(ck<T> ckVar, fl flVar, defpackage.wh1<? super a> wh1Var) {
                super(2, wh1Var);
                this.c = ckVar;
                this.d = flVar;
            }

            @Override
            public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
                return new a(this.c, this.d, wh1Var);
            }

            @Override
            public final Object invoke(Object obj, Object obj2) {
                return new a(this.c, this.d, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = z45.f();
                int i = this.b;
                if (i == 0) {
                    kotlin.c.b(obj);
                    mf0 mf0Var = ((ck) this.c).l;
                    Context contextL = this.c.l();
                    fl flVar = this.d;
                    this.b = 1;
                    obj = mf0Var.a(contextL, flVar, this);
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

        @defpackage.nt1(c = "com.monetization.ads.base.BaseAdLoadController$loadBiddingData$1$prefetchedMediationData$1", f = "BaseAdLoadController.kt", l = {185}, m = "invokeSuspend")
        public static final class b extends SuspendLambda implements s74 {
            int b;
            final ck<T> c;
            final fl d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(ck<T> ckVar, fl flVar, defpackage.wh1<? super b> wh1Var) {
                super(2, wh1Var);
                this.c = ckVar;
                this.d = flVar;
            }

            @Override
            public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
                return new b(this.c, this.d, wh1Var);
            }

            @Override
            public final Object invoke(Object obj, Object obj2) {
                return new b(this.c, this.d, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = z45.f();
                int i = this.b;
                if (i == 0) {
                    kotlin.c.b(obj);
                    gk1 gk1Var = ((ck) this.c).m;
                    Context contextL = this.c.l();
                    fl flVar = this.d;
                    this.b = 1;
                    obj = gk1Var.a(contextL, flVar, this);
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ck<T> ckVar, p82 p82Var, fl flVar, defpackage.wh1<? super c> wh1Var) {
            super(2, wh1Var);
            this.e = ckVar;
            this.f = p82Var;
            this.g = flVar;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            c cVar = new c(this.e, this.f, this.g, wh1Var);
            cVar.d = obj;
            return cVar;
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((c) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            defpackage.d72 d72Var;
            o3 o3Var;
            o3 o3Var2;
            Object objF = z45.f();
            int i = this.c;
            if (i != 0) {
                if (i == 1) {
                    o3Var = this.b;
                    d72Var = (defpackage.d72) this.d;
                    kotlin.c.b(obj);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    o3Var2 = (o3) this.d;
                    kotlin.c.b(obj);
                }
                o3Var2.e((String) obj);
                this.e.i().a(f5.h);
                this.e.a(this.f);
                return zfb.a;
            }
            kotlin.c.b(obj);
            defpackage.nk1 nk1Var = (defpackage.nk1) this.d;
            defpackage.d72 d72VarB = defpackage.el0.b(nk1Var, null, null, new b(this.e, this.g, null), 3, null);
            defpackage.d72 d72VarB2 = defpackage.el0.b(nk1Var, null, null, new a(this.e, this.g, null), 3, null);
            o3 o3VarF = this.e.f();
            this.d = d72VarB;
            this.b = o3VarF;
            this.c = 1;
            obj = d72VarB2.o(this);
            if (obj == objF) {
                return objF;
            }
            d72Var = d72VarB;
            o3Var = o3VarF;
            o3Var.d((String) obj);
            o3 o3VarF2 = this.e.f();
            this.d = o3VarF2;
            this.b = null;
            this.c = 2;
            Object objO = d72Var.o(this);
            if (objO == objF) {
                return objF;
            }
            o3Var2 = o3VarF2;
            obj = objO;
            o3Var2.e((String) obj);
            this.e.i().a(f5.h);
            this.e.a(this.f);
            return zfb.a;
        }
    }

    @defpackage.nt1(c = "com.monetization.ads.base.BaseAdLoadController$onUnverifiedMediatedAdLoaded$1", f = "BaseAdLoadController.kt", l = {266, 268, 272}, m = "invokeSuspend")
    public static final class d extends SuspendLambda implements s74 {
        Object b;
        int c;
        final ck<T> d;
        final Object e;
        final MediatedAdObjectInfo f;
        final c74 g;
        final e74 h;

        @defpackage.nt1(c = "com.monetization.ads.base.BaseAdLoadController$onUnverifiedMediatedAdLoaded$1$1$1", f = "BaseAdLoadController.kt", l = {}, m = "invokeSuspend")
        public static final class a extends SuspendLambda implements s74 {
            final c74 b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(c74 c74Var, defpackage.wh1<? super a> wh1Var) {
                super(2, wh1Var);
                this.b = c74Var;
            }

            @Override
            public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
                return new a(this.b, wh1Var);
            }

            @Override
            public final Object invoke(Object obj, Object obj2) {
                return new a(this.b, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                kotlin.c.b(obj);
                this.b.invoke();
                return zfb.a;
            }
        }

        @defpackage.nt1(c = "com.monetization.ads.base.BaseAdLoadController$onUnverifiedMediatedAdLoaded$1$2$1", f = "BaseAdLoadController.kt", l = {}, m = "invokeSuspend")
        public static final class b extends SuspendLambda implements s74 {
            final e74 b;
            final Throwable c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(e74 e74Var, Throwable th, defpackage.wh1<? super b> wh1Var) {
                super(2, wh1Var);
                this.b = e74Var;
                this.c = th;
            }

            @Override
            public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
                return new b(this.b, this.c, wh1Var);
            }

            @Override
            public final Object invoke(Object obj, Object obj2) {
                return new b(this.b, this.c, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                z45.f();
                kotlin.c.b(obj);
                this.b.invoke(String.valueOf(this.c.getMessage()));
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(ck<T> ckVar, Object obj, MediatedAdObjectInfo mediatedAdObjectInfo, c74 c74Var, e74 e74Var, defpackage.wh1<? super d> wh1Var) {
            super(2, wh1Var);
            this.d = ckVar;
            this.e = obj;
            this.f = mediatedAdObjectInfo;
            this.g = c74Var;
            this.h = e74Var;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new d(this.d, this.e, this.f, this.g, this.h, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((d) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0072  */
        /* JADX WARN: Code duplicated, block: B:25:0x0085 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            Object objA;
            Object obj2;
            e74 e74Var;
            Throwable thM282exceptionOrNullimpl;
            rx5 rx5VarC;
            b bVar;
            Object objF = z45.f();
            int i = this.c;
            if (i != 0) {
                if (i == 1) {
                    kotlin.c.b(obj);
                    objA = ((Result) obj).getValue();
                } else if (i == 2) {
                    obj2 = this.b;
                    kotlin.c.b(obj);
                    e74Var = this.h;
                    thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(obj2);
                    if (thM282exceptionOrNullimpl != null) {
                        rx5VarC = defpackage.mc2.c();
                        bVar = new b(e74Var, thM282exceptionOrNullimpl, null);
                        this.b = obj2;
                        this.c = 3;
                        if (defpackage.cl0.g(rx5VarC, bVar, this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.c.b(obj);
                }
                return zfb.a;
            }
            kotlin.c.b(obj);
            l7 l7VarJ = this.d.j();
            Object obj3 = this.e;
            o8<?> o8VarK = this.d.k();
            MediatedAdObjectInfo mediatedAdObjectInfo = this.f;
            this.c = 1;
            objA = l7VarJ.a(obj3, o8VarK, mediatedAdObjectInfo, this);
            if (objA == objF) {
                return objF;
            }
            obj2 = objA;
            c74 c74Var = this.g;
            if (Result.m286isSuccessimpl(obj2)) {
                rx5 rx5VarC2 = defpackage.mc2.c();
                a aVar = new a(c74Var, null);
                this.b = obj2;
                this.c = 2;
                if (defpackage.cl0.g(rx5VarC2, aVar, this) == objF) {
                    return objF;
                }
            }
            e74Var = this.h;
            thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(obj2);
            if (thM282exceptionOrNullimpl != null) {
                rx5VarC = defpackage.mc2.c();
                bVar = new b(e74Var, thM282exceptionOrNullimpl, null);
                this.b = obj2;
                this.c = 3;
                if (defpackage.cl0.g(rx5VarC, bVar, this) == objF) {
                    return objF;
                }
            }
            return zfb.a;
        }
    }

    public ck(Context context, g5 g5Var, o3 o3Var, defpackage.nk1 nk1Var) {
        l7 l7Var = new l7(o3Var, context);
        Handler handler = new Handler(Looper.getMainLooper());
        na naVar = new na();
        kx1 kx1Var = new kx1();
        gi giVarA = fi.a();
        fs0 fs0Var = new fs0(context, o3Var);
        ov1 ov1Var = new ov1(context, o3Var.q(), nk1Var, g5Var, null, null, 2097136);
        mf0 mf0Var = new mf0(o3Var);
        gk1 gk1Var = new gk1(o3Var);
        int i = j32.d;
        this(context, g5Var, o3Var, nk1Var, l7Var, handler, naVar, kx1Var, giVarA, fs0Var, ov1Var, mf0Var, gk1Var, j32.a.a(), new uq1(), gh1.h.a(context), new z3());
    }

    public abstract ak<T> a(String str, String str2);

    public final o3 f() {
        return this.c;
    }

    public final y3 g() {
        return this.q;
    }

    public final boolean h() {
        return this.r == j5.b;
    }

    public final g5 i() {
        return this.b;
    }

    public final l7 j() {
        return this.e;
    }

    public final o8<T> k() {
        return this.v;
    }

    public final Context l() {
        return this.a;
    }

    public final Handler m() {
        return this.f;
    }

    public final fs0 n() {
        return this.j;
    }

    public final boolean o() {
        return !this.p.b();
    }

    public final ov1 p() {
        return this.k;
    }

    public final gz1 q() {
        return this.c.r();
    }

    public void r() {
        s();
    }

    public synchronized void s() {
        sp0.d(new Object[0]);
        t3 t3Var = this.u;
        if (t3Var != null) {
            t3Var.onAdLoaded();
        }
    }

    public final void t() {
        String strE;
        op1.c cVar = op1.c.c;
        lz0 lz0VarI = this.c.i();
        if (lz0VarI == null || (strE = lz0VarI.e()) == null) {
            strE = op1.a.a;
        }
        xa xaVar = new xa(cVar, strE);
        g5 g5Var = this.b;
        f5 f5Var = f5.c;
        g5Var.getClass();
        y45.j(f5Var, "adLoadingPhaseType");
        y45.j(xaVar, "parametersProvider");
        g5Var.a(f5Var, xaVar, null);
        this.b.a(f5.e);
        this.n.a(xq0.b, this);
        a(j5.e);
        this.t = SystemClock.elapsedRealtime();
    }

    public void u() {
        a4.a(this.c.b().a());
        t();
        s();
    }

    public final void v() {
        getClass().toString();
        sp0.d(new Object[0]);
        this.p.a(this);
    }

    public final void w() {
        getClass().toString();
        sp0.d(new Object[0]);
        this.p.b(this);
    }

    @VisibleForTesting
    public w3 x() {
        return this.j.b();
    }

    public final synchronized void a(j5 j5Var) {
        y45.j(j5Var, ICode.CALL.CALL_KEY_STATE);
        Objects.toString(j5Var);
        sp0.a(new Object[0]);
        this.r = j5Var;
    }

    public synchronized void d() {
        if (!a()) {
            this.s = true;
            w();
            this.k.a();
            this.i.a();
            this.q.b();
            this.f.removeCallbacksAndMessages(null);
            this.n.a(xq0.b, this);
            this.v = null;
            kotlinx.coroutines.d.f(this.d, null, 1, null);
            sp0.f(getClass().toString());
        }
    }

    public void e() {
        d();
        getClass().toString();
        sp0.d(new Object[0]);
    }

    public synchronized void b(v7 v7Var) {
        try {
            Objects.toString(this.r);
            sp0.a(new Object[0]);
            if (this.r != j5.d) {
                if (a(v7Var)) {
                    this.b.a();
                    this.b.b(f5.e);
                    this.n.b(xq0.b, this);
                    c(v7Var);
                } else {
                    r();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c() {
        this.i.a();
    }

    @VisibleForTesting
    public final void c(p82 p82Var) {
        y45.j(p82Var, "urlConfigurator");
        int i = pw1.l;
        ju1 ju1VarA = pw1.a.a().a(this.a);
        fl flVarN = ju1VarA != null ? ju1VarA.n() : null;
        if (flVarN != null) {
            g5 g5Var = this.b;
            f5 f5Var = f5.h;
            bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
            defpackage.el0.d(this.d, null, null, new c(this, p82Var, flVarN, null), 3, null);
            return;
        }
        a(p82Var);
    }

    @VisibleForTesting
    public final synchronized void a(p82 p82Var) {
        y45.j(p82Var, "urlConfigurator");
        defpackage.el0.d(this.d, null, null, new a(this, p82Var, null), 3, null);
    }

    @Override
    public final synchronized boolean a() {
        return this.s;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    public synchronized boolean a(v7 v7Var) {
        boolean z;
        try {
            o8<T> o8Var = this.v;
            if (this.r == j5.f || o8Var == null || this.t <= 0 || SystemClock.elapsedRealtime() - this.t > o8Var.i() || (v7Var != null && !y45.e(v7Var, this.c.a()))) {
                z = true;
            } else if (ks.a(this.a).a() != this.c.o()) {
                z = true;
            } else {
                z = false;
            }
        } catch (Throwable th) {
            throw th;
        }
        return z;
    }

    @VisibleForTesting
    public final void b(p82 p82Var) {
        y45.j(p82Var, "urlConfigurator");
        g5 g5Var = this.b;
        f5 f5Var = f5.g;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
        defpackage.el0.d(this.d, null, null, new b(this, p82Var, null), 3, null);
    }

    public final synchronized void c(v7 v7Var) {
        a(v7Var, this.g);
    }

    public final void a(jg1 jg1Var) {
        y45.j(jg1Var, "urlConfigurator");
        a(j5.d);
        a((p82) jg1Var);
    }

    public void b(final w3 w3Var) {
        String strE;
        y45.j(w3Var, "error");
        hp0.c(w3Var.d(), new Object[0]);
        a(j5.f);
        op1.c cVar = op1.c.d;
        lz0 lz0VarI = this.c.i();
        if (lz0VarI == null || (strE = lz0VarI.e()) == null) {
            strE = op1.a.a;
        }
        xa xaVar = new xa(cVar, strE);
        g5 g5Var = this.b;
        f5 f5Var = f5.c;
        g5Var.getClass();
        y45.j(f5Var, "adLoadingPhaseType");
        y45.j(xaVar, "parametersProvider");
        g5Var.a(f5Var, xaVar, null);
        this.b.a(f5.e);
        this.n.a(xq0.b, this);
        this.f.post(new Runnable() {
            @Override
            public final void run() {
                ck.a(this.b, w3Var);
            }
        });
    }

    public ck(Context context, g5 g5Var, o3 o3Var, defpackage.nk1 nk1Var, l7 l7Var, Handler handler, p82 p82Var, kx1 kx1Var, ei eiVar, fs0 fs0Var, ov1 ov1Var, mf0 mf0Var, gk1 gk1Var, j32 j32Var, uq1 uq1Var, gh1 gh1Var, z3 z3Var) {
        y45.j(context, "context");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(o3Var, "adConfiguration");
        y45.j(nk1Var, "coroutineScope");
        y45.j(l7Var, "adQualityVerifierController");
        y45.j(handler, "handler");
        y45.j(p82Var, "adUrlConfigurator");
        y45.j(kx1Var, "sensitiveModeChecker");
        y45.j(eiVar, "autograbLoader");
        y45.j(fs0Var, "loadStateValidator");
        y45.j(ov1Var, "sdkInitializer");
        y45.j(mf0Var, "headerBiddingDataLoader");
        y45.j(gk1Var, "prefetchedMediationDataLoader");
        y45.j(j32Var, "strongReferenceKeepingManager");
        y45.j(uq1Var, "resourceUtils");
        y45.j(gh1Var, "phoneStateTracker");
        y45.j(z3Var, "adFetcherFactory");
        this.a = context;
        this.b = g5Var;
        this.c = o3Var;
        this.d = nk1Var;
        this.e = l7Var;
        this.f = handler;
        this.g = p82Var;
        this.h = kx1Var;
        this.i = eiVar;
        this.j = fs0Var;
        this.k = ov1Var;
        this.l = mf0Var;
        this.m = gk1Var;
        this.n = j32Var;
        this.o = uq1Var;
        this.p = gh1Var;
        z3Var.getClass();
        this.q = z3.a(this);
        this.r = j5.c;
    }

    public synchronized void a(w3 w3Var) {
        y45.j(w3Var, "error");
        t3 t3Var = this.u;
        if (t3Var != null) {
            t3Var.a(w3Var);
        }
    }

    public static final void a(ck ckVar, w3 w3Var) {
        y45.j(ckVar, "this$0");
        y45.j(w3Var, "$error");
        ckVar.a(w3Var);
    }

    @Override
    public final void a(si2 si2Var) {
        y45.j(si2Var, "error");
        if (si2Var instanceof r3) {
            b(y3.a.a(this.c, ((r3) si2Var).a()));
        }
    }

    @Override
    public void a(dh1 dh1Var) {
        y45.j(dh1Var, "phoneState");
        Objects.toString(dh1Var);
        sp0.d(new Object[0]);
    }

    @Override
    public final void b() {
        this.b.a(f5.t);
        g5 g5Var = this.b;
        f5 f5Var = f5.u;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
    }

    @Override
    public synchronized void a(o8<T> o8Var) {
        y45.j(o8Var, "adResponse");
        this.b.a(f5.u);
        this.v = o8Var;
    }

    public final void a(Object obj, MediatedAdObjectInfo mediatedAdObjectInfo, c74 c74Var, e74 e74Var) {
        y45.j(obj, "ad");
        y45.j(c74Var, "adAccepted");
        y45.j(e74Var, "adBlocked");
        defpackage.el0.d(this.d, null, null, new d(this, obj, mediatedAdObjectInfo, c74Var, e74Var, null), 3, null);
    }

    public final void a(zi ziVar) {
        this.u = ziVar;
    }

    public void a(String str) {
        this.c.a(str);
    }

    public final void a(gz1 gz1Var) {
        this.c.a(gz1Var);
    }

    public final synchronized void a(final v7 v7Var, final p82 p82Var) {
        y45.j(p82Var, "urlConfigurator");
        a(j5.d);
        this.f.post(new Runnable() {
            @Override
            public final void run() {
                ck.a(this.b, v7Var, p82Var);
            }
        });
    }

    public static final void a(ck ckVar, v7 v7Var, p82 p82Var) {
        y45.j(ckVar, "this$0");
        y45.j(p82Var, "$urlConfigurator");
        ckVar.c.a(v7Var);
        w3 w3VarX = ckVar.x();
        if (w3VarX == null) {
            ckVar.k.a(gl0.d, new dk(ckVar, p82Var));
        } else {
            ckVar.b(w3VarX);
        }
    }
}
