package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetcher;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.TimeoutKt;

@defpackage.nt1(c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader$loadNetworkMediationDataAsync$1", f = "PrefetchedMediationNetworksDataLoader.kt", l = {78}, m = "invokeSuspend")
final class mk1 extends SuspendLambda implements s74 {
    lz0 b;
    MediatedAdapterPrefetcher c;
    int d;
    final rk1 e;
    final g01 f;
    final Context g;
    final long h;
    final gz1 i;

    @defpackage.nt1(c = "com.monetization.ads.base.mediation.prefetch.PrefetchedMediationNetworksDataLoader$loadNetworkMediationDataAsync$1$1", f = "PrefetchedMediationNetworksDataLoader.kt", l = {79}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;
        final rk1 c;
        final Context d;
        final gz1 e;
        final lz0 f;
        final MediatedAdapterPrefetcher g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(rk1 rk1Var, Context context, gz1 gz1Var, lz0 lz0Var, MediatedAdapterPrefetcher mediatedAdapterPrefetcher, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.c = rk1Var;
            this.d = context;
            this.e = gz1Var;
            this.f = lz0Var;
            this.g = mediatedAdapterPrefetcher;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new a(this.c, this.d, this.e, this.f, this.g, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((a) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                jk1 jk1Var = this.c.b;
                Context context = this.d;
                gz1 gz1Var = this.e;
                lz0 lz0Var = this.f;
                MediatedAdapterPrefetcher mediatedAdapterPrefetcher = this.g;
                this.b = 1;
                obj = jk1Var.a(context, gz1Var, lz0Var, mediatedAdapterPrefetcher, this);
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
    public mk1(rk1 rk1Var, g01 g01Var, Context context, long j, gz1 gz1Var, defpackage.wh1<? super mk1> wh1Var) {
        super(2, wh1Var);
        this.e = rk1Var;
        this.f = g01Var;
        this.g = context;
        this.h = j;
        this.i = gz1Var;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        return new mk1(this.e, this.f, this.g, this.h, this.i, wh1Var);
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((mk1) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetcher] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetcher] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetcher] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetcher] */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.monetization.ads.mediation.base.prefetch.MediatedAdapterPrefetcher] */
    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        ?? r1;
        lz0 lz0Var;
        ?? r0;
        ?? r2;
        lz0 lz0Var2;
        MediatedAdapterPrefetcher mediatedAdapterPrefetcher;
        hk1 hk1Var;
        ?? r3;
        Object objF = z45.f();
        int i = this.d;
        try {
            if (i == 0) {
                kotlin.c.b(obj);
                kk1 kk1Var = this.e.c;
                g01 g01Var = this.f;
                kk1Var.getClass();
                y45.j(g01Var, "mediationPrefetchNetwork");
                lz0Var = new lz0(g01Var.d(), g01Var.e(), null, null, null, null, null);
                Object objA = this.e.a.a(this.g, lz0Var, (Class<Object>) com.monetization.ads.mediation.base.a.class);
                if (objA instanceof MediatedAdapterPrefetcher) {
                    mediatedAdapterPrefetcher = (MediatedAdapterPrefetcher) objA;
                } else {
                    r1 = 0;
                }
                if (r1 == 0) {
                    r1 = mediatedAdapterPrefetcher;
                    return null;
                }
                try {
                    r1 = mediatedAdapterPrefetcher;
                    long j = this.h;
                    a aVar = new a(this.e, this.g, this.i, lz0Var, r1, null);
                    this.b = lz0Var;
                    this.c = r1;
                    this.d = 1;
                    Object objC = TimeoutKt.c(j, aVar, this);
                    if (objC == objF) {
                        return objF;
                    }
                    r2 = r1;
                    lz0Var2 = lz0Var;
                    obj = objC;
                } catch (Exception unused) {
                    r0 = r1;
                    ik1 ik1Var = this.e.d;
                    String strE = lz0Var.e();
                    ik1Var.getClass();
                    y45.j(strE, "adapter");
                    hk1Var = new hk1(strE, null, null, new sk1(tk1.d, null, null), null);
                    r3 = r0;
                } catch (Throwable th) {
                    th = th;
                    r1.onInvalidate();
                    throw th;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                r2 = this.c;
                lz0Var2 = this.b;
                try {
                    kotlin.c.b(obj);
                    r2 = r2;
                } catch (Exception unused2) {
                    lz0Var = lz0Var2;
                    r0 = r2;
                    ik1 ik1Var2 = this.e.d;
                    String strE2 = lz0Var.e();
                    ik1Var2.getClass();
                    y45.j(strE2, "adapter");
                    hk1Var = new hk1(strE2, null, null, new sk1(tk1.d, null, null), null);
                    r3 = r0;
                }
            }
            hk1Var = (hk1) obj;
            r3 = r2;
            r3.onInvalidate();
            return hk1Var;
        } catch (Throwable th2) {
            th = th2;
            r1 = objF;
        }
    }
}
