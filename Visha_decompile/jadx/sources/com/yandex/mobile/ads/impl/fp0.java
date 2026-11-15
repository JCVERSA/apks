package com.yandex.mobile.ads.impl;

import defpackage.gx9;
import defpackage.hx9;
import defpackage.mw6;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

public final class fp0 extends ih2 {
    private final ne0 b;
    private final v32 c;
    private final me0 d;
    private final le0 e;
    private final ke0 f;
    private final oe0 g;
    private final kx h;
    private final la i;
    private final ia j;
    private final fa k;
    private final xz0 l;
    private final mw6 m;
    private final gx9 n;
    private final defpackage.ps0 o;
    private final nz3 p;

    @defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.ui.viewmodel.IntegrationInspectorViewModel$sendEvent$1", f = "IntegrationInspectorViewModel.kt", l = {158}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;
        final ey d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ey eyVar, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.d = eyVar;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return fp0.this.new a(this.d, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return fp0.this.new a(this.d, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                defpackage.ps0 ps0Var = fp0.this.o;
                ey eyVar = this.d;
                this.b = 1;
                if (ps0Var.l(eyVar, this) == objF) {
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

    @defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.ui.viewmodel.IntegrationInspectorViewModel$shareReport$1", f = "IntegrationInspectorViewModel.kt", l = {131}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        int b;

        public b(defpackage.wh1<? super b> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return fp0.this.new b(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return fp0.this.new b((defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            ey cVar;
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                ne0 ne0Var = fp0.this.b;
                this.b = 1;
                obj = ne0Var.a(this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            ll0 ll0Var = (ll0) obj;
            if (ll0Var instanceof ll0.c) {
                cVar = new ey.d(((ll0.c) ll0Var).a());
            } else if (ll0Var instanceof ll0.a) {
                cVar = new ey.c(((ll0.a) ll0Var).a());
            } else {
                if (!(ll0Var instanceof ll0.b)) {
                    throw new NoWhenBranchMatchedException();
                }
                cVar = ey.b.a;
            }
            fp0.this.a(cVar);
            return zfb.a;
        }
    }

    @defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.ui.viewmodel.IntegrationInspectorViewModel$showMessage$1", f = "IntegrationInspectorViewModel.kt", l = {144}, m = "invokeSuspend")
    public static final class c extends SuspendLambda implements s74 {
        int b;
        final String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, defpackage.wh1<? super c> wh1Var) {
            super(2, wh1Var);
            this.d = str;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return fp0.this.new c(this.d, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return fp0.this.new c(this.d, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                defpackage.ps0 ps0Var = fp0.this.o;
                ey.e eVar = new ey.e(this.d);
                this.b = 1;
                if (ps0Var.l(eVar, this) == objF) {
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

    public fp0(ne0 ne0Var, v32 v32Var, me0 me0Var, le0 le0Var, ke0 ke0Var, oe0 oe0Var, kx kxVar, la laVar, ia iaVar, fa faVar, xz0 xz0Var) {
        y45.j(ne0Var, "getInspectorReportUseCase");
        y45.j(v32Var, "switchDebugErrorIndicatorVisibilityUseCase");
        y45.j(me0Var, "getDebugPanelFeedDataUseCase");
        y45.j(le0Var, "getAdUnitsDataUseCase");
        y45.j(ke0Var, "getAdUnitDataUseCase");
        y45.j(oe0Var, "getMediationNetworkDataUseCase");
        y45.j(kxVar, "debugPanelFeedUiMapper");
        y45.j(laVar, "adUnitsUiMapper");
        y45.j(iaVar, "adUnitUiMapper");
        y45.j(faVar, "adUnitMediationAdapterUiMapper");
        y45.j(xz0Var, "mediationNetworkUiMapper");
        this.b = ne0Var;
        this.c = v32Var;
        this.d = me0Var;
        this.e = le0Var;
        this.f = ke0Var;
        this.g = oe0Var;
        this.h = kxVar;
        this.i = laVar;
        this.j = iaVar;
        this.k = faVar;
        this.l = xz0Var;
        mw6 mw6VarA = hx9.a(new gy(null, fx.d.b, false, defpackage.y71.k()));
        this.m = mw6VarA;
        this.n = sz3.a(mw6VarA);
        defpackage.ps0 ps0VarB = defpackage.cu0.b(0, null, null, 7, null);
        this.o = ps0VarB;
        this.p = sz3.y(ps0VarB);
    }

    public static final void m(fp0 fp0Var) {
        Object value;
        gy gyVarB = ((gy) fp0Var.m.getValue()).b();
        if (gyVarB == null) {
            fp0Var.a(ey.a.a);
            return;
        }
        gy gyVarA = gy.a(gyVarB, null, null, false, null, 11);
        mw6 mw6Var = fp0Var.m;
        do {
            value = mw6Var.getValue();
        } while (!mw6Var.a(value, gyVarA));
    }

    private final void e() {
        defpackage.el0.d(b(), null, null, new b(null), 3, null);
    }

    private final void f() {
        defpackage.el0.d(b(), null, null, new gp0(this, false, null), 3, null);
    }

    public final nz3 c() {
        return this.p;
    }

    public final gx9 d() {
        return this.n;
    }

    public static final void a(fp0 fp0Var, gy gyVar) {
        Object value;
        mw6 mw6Var = fp0Var.m;
        do {
            value = mw6Var.getValue();
        } while (!mw6Var.a(value, gyVar));
    }

    public final void a(dy dyVar) {
        fx eVar;
        Object value;
        Object value2;
        Object value3;
        Object value4;
        y45.j(dyVar, "action");
        if (dyVar instanceof dy.a) {
            f();
            return;
        }
        if (dyVar instanceof dy.g) {
            e();
            return;
        }
        if (dyVar instanceof dy.e) {
            this.c.a();
            f();
            return;
        }
        if (dyVar instanceof dy.d) {
            gy gyVarB = ((gy) this.m.getValue()).b();
            if (gyVarB == null) {
                a(ey.a.a);
                return;
            }
            gy gyVarA = gy.a(gyVarB, null, null, false, null, 11);
            mw6 mw6Var = this.m;
            do {
                value4 = mw6Var.getValue();
            } while (!mw6Var.a(value4, gyVarA));
            return;
        }
        if (dyVar instanceof dy.c) {
            fx.c cVar = fx.c.b;
            gy gyVar = (gy) this.m.getValue();
            gy gyVarA2 = gy.a(gyVar, gyVar, cVar, false, null, 12);
            mw6 mw6Var2 = this.m;
            do {
                value3 = mw6Var2.getValue();
            } while (!mw6Var2.a(value3, gyVarA2));
            f();
            return;
        }
        if (dyVar instanceof dy.b) {
            fx.a aVar = new fx.a(((dy.b) dyVar).a());
            gy gyVar2 = (gy) this.m.getValue();
            gy gyVarA3 = gy.a(gyVar2, gyVar2, aVar, false, null, 12);
            mw6 mw6Var3 = this.m;
            do {
                value2 = mw6Var3.getValue();
            } while (!mw6Var3.a(value2, gyVarA3));
            f();
            return;
        }
        if (dyVar instanceof dy.f) {
            fx fxVarA = ((gy) this.m.getValue()).a();
            iy.g gVarA = ((dy.f) dyVar).a();
            if (fxVarA instanceof fx.a) {
                eVar = new fx.b(gVarA);
            } else {
                eVar = new fx.e(gVarA.f());
            }
            fx fxVar = eVar;
            gy gyVar3 = (gy) this.m.getValue();
            gy gyVarA4 = gy.a(gyVar3, gyVar3, fxVar, false, null, 12);
            mw6 mw6Var4 = this.m;
            do {
                value = mw6Var4.getValue();
            } while (!mw6Var4.a(value, gyVarA4));
            f();
            return;
        }
        if (dyVar instanceof dy.h) {
            a(((dy.h) dyVar).a());
        }
    }

    public final kotlinx.coroutines.j a(ey eyVar) {
        return defpackage.el0.d(b(), null, null, new a(eyVar, null), 3, null);
    }

    private final void a(String str) {
        defpackage.el0.d(b(), null, null, new c(str, null), 3, null);
    }
}
