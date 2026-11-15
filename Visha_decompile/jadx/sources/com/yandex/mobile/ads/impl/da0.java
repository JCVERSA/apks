package com.yandex.mobile.ads.impl;

import defpackage.hx9;
import defpackage.mw6;
import defpackage.y45;
import defpackage.z45;
import java.util.Collection;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

public final class da0 {
    private final v7 a;
    private final x90 b;
    private final ba0 c;
    private final y90 d;
    private final mw6 e;
    private final mw6 f;

    @defpackage.nt1(c = "com.monetization.ads.feed.data.FeedItemsRepository", f = "FeedItemsRepository.kt", l = {34, 37}, m = "loadNewFeedItem")
    public static final class a extends ContinuationImpl {
        da0 b;
        Object c;
        int e;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.e |= Integer.MIN_VALUE;
            return da0.this.a(this);
        }
    }

    public da0(v7 v7Var, x90 x90Var, ba0 ba0Var, y90 y90Var) {
        y45.j(v7Var, "adRequestData");
        y45.j(x90Var, "loadDataSource");
        y45.j(ba0Var, "preloadDataSource");
        y45.j(y90Var, "loadEnoughMemoryValidator");
        this.a = v7Var;
        this.b = x90Var;
        this.c = ba0Var;
        this.d = y90Var;
        mw6 mw6VarA = hx9.a(defpackage.y71.k());
        this.e = mw6VarA;
        this.f = mw6VarA;
    }

    public final Object b(defpackage.wh1<? super zk1> wh1Var) {
        return this.d.a() ? a(wh1Var) : new zk1.a(w7.o());
    }

    public final mw6 a() {
        return this.f;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(defpackage.wh1<? super zk1> wh1Var) {
        a aVar;
        n90 n90Var;
        mw6 mw6Var;
        Object value;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.e = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object objA = aVar.c;
        Object objF = z45.f();
        int i2 = aVar.e;
        if (i2 == 0) {
            kotlin.c.b(objA);
            x90 x90Var = this.b;
            v7 v7Var = this.a;
            List<n90> list = (List) this.f.getValue();
            aVar.b = this;
            aVar.e = 1;
            objA = x90Var.a(v7Var, list, aVar);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i2 == 1) {
                this = aVar.b;
                kotlin.c.b(objA);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                this = aVar.b;
                kotlin.c.b(objA);
            }
            n90Var = (n90) objA;
            mw6Var = this.e;
            do {
                value = mw6Var.getValue();
            } while (!mw6Var.a(value, defpackage.i81.K0((Collection) this.e.getValue(), n90Var)));
            return new zk1.b(n90Var);
        }
        aa0 aa0Var = (aa0) objA;
        if (aa0Var instanceof aa0.b) {
            ba0 ba0Var = this.c;
            gs0 gs0VarA = ((aa0.b) aa0Var).a();
            aVar.b = this;
            aVar.e = 2;
            objA = ba0Var.a(gs0VarA, aVar);
            if (objA == objF) {
                return objF;
            }
            n90Var = (n90) objA;
            mw6Var = this.e;
            do {
                value = mw6Var.getValue();
            } while (!mw6Var.a(value, defpackage.i81.K0((Collection) this.e.getValue(), n90Var)));
            return new zk1.b(n90Var);
        }
        if (aa0Var instanceof aa0.a) {
            return new zk1.a(((aa0.a) aa0Var).a());
        }
        throw new NoWhenBranchMatchedException();
    }
}
