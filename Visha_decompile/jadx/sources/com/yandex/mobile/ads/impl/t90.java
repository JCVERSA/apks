package com.yandex.mobile.ads.impl;

import defpackage.gx9;
import defpackage.hx9;
import defpackage.kw6;
import defpackage.mw6;
import defpackage.nw6;
import defpackage.nz3;
import defpackage.oz3;
import defpackage.s74;
import defpackage.sw6;
import defpackage.sz3;
import defpackage.v6a;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.jvm.internal.SuspendLambda;

public final class t90 {
    private final nz3 a;
    private final da0 b;
    private final defpackage.nk1 c;
    private final nw6 d;
    private final mw6 e;
    private final gx9 f;

    @defpackage.nt1(c = "com.monetization.ads.feed.domain.FeedItemListUseCase$invoke$1", f = "FeedItemListUseCase.kt", l = {41}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;

        public static final class C0329a<T> implements oz3 {
            final t90 a;

            public C0329a(t90 t90Var) {
                this.a = t90Var;
            }

            @Override
            public final Object emit(Object obj, defpackage.wh1 wh1Var) {
                Object objA;
                return ((((m90) obj) instanceof m90.a) && (objA = t90.a(this.a, wh1Var)) == z45.f()) ? objA : zfb.a;
            }
        }

        public a(defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return t90.this.new a(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return t90.this.new a((defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                nz3 nz3Var = t90.this.a;
                C0329a c0329a = new C0329a(t90.this);
                this.b = 1;
                if (nz3Var.collect(c0329a, this) == objF) {
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

    public t90(kw6 kw6Var, da0 da0Var) {
        this(kw6Var, da0Var, kotlinx.coroutines.d.a(defpackage.mc2.a().plus(v6a.b(null, 1, null))));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(t90 t90Var, defpackage.wh1 wh1Var) {
        u90 u90Var;
        Object value;
        Object value2;
        Object value3;
        t90Var.getClass();
        if (wh1Var instanceof u90) {
            u90Var = (u90) wh1Var;
            int i = u90Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                u90Var.e = i - Integer.MIN_VALUE;
            } else {
                u90Var = new u90(t90Var, wh1Var);
            }
        } else {
            u90Var = new u90(t90Var, wh1Var);
        }
        Object objB = u90Var.c;
        Object objF = z45.f();
        int i2 = u90Var.e;
        if (i2 == 0) {
            kotlin.c.b(objB);
            if (nw6.a.a(t90Var.d, null, 1, null)) {
                mw6 mw6Var = t90Var.e;
                do {
                    value = mw6Var.getValue();
                } while (!mw6Var.a(value, ea0.d.a));
                da0 da0Var = t90Var.b;
                u90Var.b = t90Var;
                u90Var.e = 1;
                objB = da0Var.b(u90Var);
                if (objB == objF) {
                    return objF;
                }
            }
            return zfb.a;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        t90Var = u90Var.b;
        kotlin.c.b(objB);
        t90 t90Var2 = t90Var;
        zk1 zk1Var = (zk1) objB;
        if (zk1Var instanceof zk1.a) {
            mw6 mw6Var2 = t90Var2.e;
            do {
                value3 = mw6Var2.getValue();
            } while (!mw6Var2.a(value3, new ea0.a(((zk1.a) zk1Var).a())));
        } else {
            mw6 mw6Var3 = t90Var2.e;
            do {
                value2 = mw6Var3.getValue();
            } while (!mw6Var3.a(value2, ea0.c.a));
        }
        nw6.a.b(t90Var2.d, null, 1, null);
        return zfb.a;
    }

    public t90(kw6 kw6Var, da0 da0Var, defpackage.nk1 nk1Var) {
        y45.j(kw6Var, "feedInputEventFlow");
        y45.j(da0Var, "repo");
        y45.j(nk1Var, "coroutineScope");
        this.a = kw6Var;
        this.b = da0Var;
        this.c = nk1Var;
        this.d = sw6.b(false, 1, null);
        ea0.b bVar = ea0.b.a;
        mw6 mw6VarA = hx9.a(bVar);
        this.e = mw6VarA;
        this.f = sz3.z(sz3.s(mw6VarA, da0Var.a(), new s90(null)), nk1Var, kotlinx.coroutines.flow.a.a.a(), new la0(bVar, defpackage.y71.k()));
    }

    public final gx9 a() {
        defpackage.el0.d(this.c, null, null, new a(null), 3, null);
        return this.f;
    }
}
