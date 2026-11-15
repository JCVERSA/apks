package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.e74;
import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class pc {
    private final Object a = new Object();
    private final CopyOnWriteArrayList b = new CopyOnWriteArrayList();

    @defpackage.nt1(c = "com.monetization.ads.core.identifiers.ad.AdvertisingInfoLoader$requestAdvertisingInfo$2", f = "AdvertisingInfoLoader.kt", l = {53}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;
        final Context d;

        public static final class C0327a extends Lambda implements e74 {
            final pc b;
            final Context c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0327a(pc pcVar, Context context) {
                super(1);
                this.b = pcVar;
                this.c = context;
            }

            @Override
            public final Object invoke(Object obj) {
                pc.a(this.b, this.c);
                return zfb.a;
            }
        }

        public static final class b implements vc {
            final defpackage.cr0 a;

            public b(CancellableContinuationImpl cancellableContinuationImpl) {
                this.a = cancellableContinuationImpl;
            }

            @Override
            public final void a(nc ncVar) {
                if (this.a.isActive()) {
                    this.a.resumeWith(Result.m279constructorimpl(ncVar));
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.d = context;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return pc.this.new a(this.d, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return pc.this.new a(this.d, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                pc pcVar = pc.this;
                Context context = this.d;
                this.b = 1;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(this), 1);
                cancellableContinuationImpl.initCancellability();
                cancellableContinuationImpl.invokeOnCancellation(new C0327a(pcVar, context));
                pc.a(pcVar, context, new b(cancellableContinuationImpl));
                obj = cancellableContinuationImpl.getResult();
                if (obj == z45.f()) {
                    defpackage.pt1.c(this);
                }
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

    public static final void a(pc pcVar, Context context) {
        ArrayList arrayList;
        synchronized (pcVar.a) {
            arrayList = new ArrayList(pcVar.b);
            pcVar.b.clear();
            zfb zfbVar = zfb.a;
        }
        int i = oc.h;
        oc ocVarA = oc.a.a(context);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ocVarA.a((vc) it.next());
        }
    }

    public static final void a(pc pcVar, Context context, vc vcVar) {
        synchronized (pcVar.a) {
            pcVar.b.add(vcVar);
            int i = oc.h;
            oc.a.a(context).b(vcVar);
            zfb zfbVar = zfb.a;
        }
    }

    public final Object a(Context context, defpackage.wh1<? super nc> wh1Var) {
        return defpackage.cl0.g(qu.a(), new a(context, null), wh1Var);
    }
}
