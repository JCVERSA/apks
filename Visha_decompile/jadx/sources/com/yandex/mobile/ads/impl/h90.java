package com.yandex.mobile.ads.impl;

import defpackage.gx9;
import defpackage.oz3;
import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import kotlin.KotlinNothingValueException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.feed.ui.FeedAdapterInternal$observePagedData$1", f = "FeedAdapterInternal.kt", l = {66}, m = "invokeSuspend")
final class h90 extends SuspendLambda implements s74 {
    int b;
    private Object c;
    final g90 d;

    public static final class a<T> implements oz3 {
        final g90 a;
        final defpackage.nk1 b;

        public a(g90 g90Var, defpackage.nk1 nk1Var) {
            this.a = g90Var;
            this.b = nk1Var;
        }

        @Override
        public final Object emit(Object obj, defpackage.wh1 wh1Var) {
            la0 la0Var = (la0) obj;
            ea0 ea0VarC = la0Var.c();
            if (ea0VarC instanceof ea0.a) {
                w3 w3VarA = ((ea0.a) la0Var.c()).a();
                this.a.submitList(la0Var.b());
                kotlinx.coroutines.d.e(this.b, w3VarA.d(), null, 2, null);
            } else if (ea0VarC instanceof ea0.c) {
                this.a.submitList(defpackage.i81.K0(la0Var.b(), ha0.a));
            } else if (ea0VarC instanceof ea0.b) {
                this.a.submitList(la0Var.b());
            } else if (ea0VarC instanceof ea0.d) {
                if (la0Var.b().isEmpty()) {
                    this.a.submitList(la0Var.b());
                } else {
                    this.a.submitList(defpackage.i81.K0(la0Var.b(), ha0.a));
                }
            }
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h90(g90 g90Var, defpackage.wh1<? super h90> wh1Var) {
        super(2, wh1Var);
        this.d = g90Var;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        h90 h90Var = new h90(this.d, wh1Var);
        h90Var.c = obj;
        return h90Var;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        h90 h90Var = new h90(this.d, (defpackage.wh1) obj2);
        h90Var.c = (defpackage.nk1) obj;
        return h90Var.invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.b;
        if (i == 0) {
            kotlin.c.b(obj);
            defpackage.nk1 nk1Var = (defpackage.nk1) this.c;
            gx9 gx9VarC = this.d.a.c();
            a aVar = new a(this.d, nk1Var);
            this.b = 1;
            if (gx9VarC.collect(aVar, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        throw new KotlinNothingValueException();
    }
}
