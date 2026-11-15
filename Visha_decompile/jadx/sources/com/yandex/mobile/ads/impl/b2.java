package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.e74;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class b2 implements a2 {
    private final c2 a;
    private final ArrayList b;
    private final Object c;

    @defpackage.nt1(c = "com.monetization.ads.base.aab.AdBlockerControllerImpl$detectAdBlocker$2", f = "AdBlockerControllerImpl.kt", l = {55}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;

        public static final class C0310a extends Lambda implements e74 {
            final b2 b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0310a(b2 b2Var) {
                super(1);
                this.b = b2Var;
            }

            @Override
            public final Object invoke(Object obj) {
                b2.a(this.b);
                return zfb.a;
            }
        }

        public static final class b implements e2 {
            final defpackage.cr0 a;

            public b(CancellableContinuationImpl cancellableContinuationImpl) {
                this.a = cancellableContinuationImpl;
            }

            @Override
            public final void a() {
                if (this.a.isActive()) {
                    defpackage.cr0 cr0Var = this.a;
                    Result.Companion companion = Result.INSTANCE;
                    cr0Var.resumeWith(Result.m279constructorimpl(zfb.a));
                }
            }
        }

        public a(defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return b2.this.new a(wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return b2.this.new a((defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                b2 b2Var = b2.this;
                this.b = 1;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(this), 1);
                cancellableContinuationImpl.initCancellability();
                cancellableContinuationImpl.invokeOnCancellation(new C0310a(b2Var));
                b2.a(b2Var, new b(cancellableContinuationImpl));
                Object result = cancellableContinuationImpl.getResult();
                if (result == z45.f()) {
                    defpackage.pt1.c(this);
                }
                if (result == objF) {
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

    public b2(Context context, c2 c2Var) {
        y45.j(context, "context");
        y45.j(c2Var, "adBlockerDetector");
        this.a = c2Var;
        this.b = new ArrayList();
        this.c = new Object();
    }

    public static final void a(b2 b2Var) {
        List listB1;
        synchronized (b2Var.c) {
            listB1 = defpackage.i81.b1(b2Var.b);
            b2Var.b.clear();
            zfb zfbVar = zfb.a;
        }
        Iterator it = listB1.iterator();
        while (it.hasNext()) {
            b2Var.a.a((e2) it.next());
        }
    }

    public static final void a(b2 b2Var, e2 e2Var) {
        synchronized (b2Var.c) {
            b2Var.b.add(e2Var);
            b2Var.a.b(e2Var);
            zfb zfbVar = zfb.a;
        }
    }

    @Override
    public final Object a(defpackage.wh1<? super zfb> wh1Var) {
        Object objG = defpackage.cl0.g(qu.a(), new a(null), wh1Var);
        return objG == z45.f() ? objG : zfb.a;
    }
}
