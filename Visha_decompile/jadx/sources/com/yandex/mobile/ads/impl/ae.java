package com.yandex.mobile.ads.impl;

import android.os.Handler;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.TimeoutKt;

public final class ae {
    private final kotlin.coroutines.d a;
    private final Handler b;

    @defpackage.nt1(c = "com.monetization.ads.core.anr.AnrChecker$isAlive$2", f = "AnrChecker.kt", l = {20}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;
        final long d;

        @defpackage.nt1(c = "com.monetization.ads.core.anr.AnrChecker$isAlive$2$2", f = "AnrChecker.kt", l = {20}, m = "invokeSuspend")
        public static final class C0309a extends SuspendLambda implements s74 {
            int b;
            final defpackage.ib1 c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0309a(defpackage.ib1 ib1Var, defpackage.wh1<? super C0309a> wh1Var) {
                super(2, wh1Var);
                this.c = ib1Var;
            }

            @Override
            public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
                return new C0309a(this.c, wh1Var);
            }

            @Override
            public final Object invoke(Object obj, Object obj2) {
                return new C0309a(this.c, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = z45.f();
                int i = this.b;
                if (i == 0) {
                    kotlin.c.b(obj);
                    defpackage.ib1 ib1Var = this.c;
                    this.b = 1;
                    if (ib1Var.o(this) == objF) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(long j, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.d = j;
        }

        public static final void a(defpackage.ib1 ib1Var) {
            ib1Var.h(zfb.a);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return ae.this.new a(this.d, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ae.this.new a(this.d, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                final defpackage.ib1 ib1VarC = defpackage.kb1.c(null, 1, null);
                ae.this.b.post(new Runnable() {
                    @Override
                    public final void run() {
                        ae.a.a(ib1VarC);
                    }
                });
                long j = this.d;
                C0309a c0309a = new C0309a(ib1VarC, null);
                this.b = 1;
                obj = TimeoutKt.d(j, c0309a, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return defpackage.mk0.a(obj != null);
        }
    }

    public ae(kotlin.coroutines.d dVar, Handler handler) {
        y45.j(dVar, "coroutineContext");
        y45.j(handler, "mainHandler");
        this.a = dVar;
        this.b = handler;
    }

    public final Object a(long j, defpackage.wh1<? super Boolean> wh1Var) {
        return defpackage.cl0.g(this.a, new a(j, null), wh1Var);
    }
}
