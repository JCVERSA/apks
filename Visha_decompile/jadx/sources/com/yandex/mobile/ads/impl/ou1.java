package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.e74;
import defpackage.nw6;
import defpackage.s74;
import defpackage.sw6;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class ou1 {
    private static final nw6 d = sw6.b(false, 1, null);
    private final g5 a;
    private final kx1 b;
    private final nu1 c;

    public ou1(Context context, bv1 bv1Var, p50 p50Var, jc jcVar, g5 g5Var) {
        kx1 kx1Var = new kx1();
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, bv1Var, p50Var, jcVar, g5Var, kx1Var, new nu1(applicationContext, bv1Var.c(), jcVar, p50Var, g5Var));
    }

    @defpackage.nt1(c = "com.monetization.ads.base.SdkConfigurationLoaderHolder$loadSdkConfiguration$2", f = "SdkConfigurationLoaderHolder.kt", l = {93, 96}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        nw6 b;
        ou1 c;
        gl0 d;
        Object e;
        int f;
        final gl0 h;

        public static final class C0326a extends Lambda implements e74 {
            final ou1 b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0326a(ou1 ou1Var) {
                super(1);
                this.b = ou1Var;
            }

            @Override
            public final Object invoke(Object obj) {
                this.b.c.a();
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(gl0 gl0Var, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.h = gl0Var;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return ou1.this.new a(this.h, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ou1.this.new a(this.h, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) throws Throwable {
            nw6 nw6Var;
            ou1 ou1Var;
            gl0 gl0Var;
            Throwable th;
            nw6 nw6Var2;
            Object objF = z45.f();
            int i = this.f;
            try {
                if (i == 0) {
                    kotlin.c.b(obj);
                    g5 g5Var = ou1.this.a;
                    f5 f5Var = f5.l;
                    g5Var.getClass();
                    y45.j(f5Var, "adLoadingPhaseType");
                    g5Var.a(f5Var, null);
                    nw6Var = ou1.d;
                    ou1Var = ou1.this;
                    gl0Var = this.h;
                    this.b = nw6Var;
                    this.c = ou1Var;
                    this.d = gl0Var;
                    this.f = 1;
                    if (nw6Var.c(null, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i != 1) {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        nw6Var2 = this.b;
                        try {
                            kotlin.c.b(obj);
                            yu1 yu1Var = (yu1) obj;
                            nw6Var2.b(null);
                            return yu1Var;
                        } catch (Throwable th2) {
                            th = th2;
                            nw6Var2.b(null);
                            throw th;
                        }
                    }
                    gl0Var = this.d;
                    ou1Var = this.c;
                    nw6 nw6Var3 = this.b;
                    kotlin.c.b(obj);
                    nw6Var = nw6Var3;
                }
                ou1Var.a.a(f5.l);
                this.b = nw6Var;
                this.c = ou1Var;
                this.d = gl0Var;
                this.f = 2;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(this), 1);
                cancellableContinuationImpl.initCancellability();
                cancellableContinuationImpl.invokeOnCancellation(new C0326a(ou1Var));
                ou1Var.c.a(ou1Var.b, gl0Var, new b(cancellableContinuationImpl));
                Object result = cancellableContinuationImpl.getResult();
                if (result == z45.f()) {
                    defpackage.pt1.c(this);
                }
                if (result == objF) {
                    return objF;
                }
                nw6Var2 = nw6Var;
                obj = result;
                yu1 yu1Var2 = (yu1) obj;
                nw6Var2.b(null);
                return yu1Var2;
            } catch (Throwable th3) {
                nw6 nw6Var4 = nw6Var;
                th = th3;
                nw6Var2 = nw6Var4;
                nw6Var2.b(null);
                throw th;
            }
        }

        public static final class b implements nu1.a {
            final defpackage.cr0 a;

            public b(CancellableContinuationImpl cancellableContinuationImpl) {
                this.a = cancellableContinuationImpl;
            }

            @Override
            public final void a(si2 si2Var, kr krVar) {
                y45.j(si2Var, "error");
                y45.j(krVar, "configurationSource");
                if (this.a.isActive()) {
                    defpackage.cr0 cr0Var = this.a;
                    Result.Companion companion = Result.INSTANCE;
                    cr0Var.resumeWith(Result.m279constructorimpl(new yu1.a(si2Var, krVar)));
                }
            }

            @Override
            public final void a(ju1 ju1Var, kr krVar) {
                y45.j(ju1Var, "sdkConfiguration");
                y45.j(krVar, "configurationSource");
                if (this.a.isActive()) {
                    defpackage.cr0 cr0Var = this.a;
                    Result.Companion companion = Result.INSTANCE;
                    cr0Var.resumeWith(Result.m279constructorimpl(new yu1.b(ju1Var, krVar)));
                }
            }
        }
    }

    public final Object a(gl0 gl0Var, defpackage.wh1<? super yu1> wh1Var) {
        return defpackage.cl0.g(qu.a(), new a(gl0Var, null), wh1Var);
    }

    public ou1(Context context, bv1 bv1Var, p50 p50Var, jc jcVar, g5 g5Var, kx1 kx1Var, nu1 nu1Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(p50Var, "environmentController");
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(kx1Var, "sensitiveModeChecker");
        y45.j(nu1Var, "sdkConfigurationLoader");
        this.a = g5Var;
        this.b = kx1Var;
        this.c = nu1Var;
    }
}
