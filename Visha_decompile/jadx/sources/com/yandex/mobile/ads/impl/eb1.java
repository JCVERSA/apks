package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class eb1 {
    private final i00 a;
    private final jb0 b;
    private final w41 c;

    @defpackage.nt1(c = "com.monetization.ads.nativeads.video.cache.NativeVideoLoadController", f = "NativeVideoLoadController.kt", l = {38, 44}, m = "loadVideo")
    public static final class a extends ContinuationImpl {
        Object b;
        Context c;
        dw d;
        boolean e;
        Object f;
        int h;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.f = obj;
            this.h |= Integer.MIN_VALUE;
            return eb1.this.a(false, null, null, null, this);
        }
    }

    public eb1(o3 o3Var, Context context, g5 g5Var) {
        this(o3Var, context, g5Var, new i00(context, g5Var), new jb0(context, g5Var), new w41(context, o3Var));
    }

    public final void a() {
        this.a.a();
        this.b.a();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(boolean z, Context context, s41 s41Var, dw dwVar, defpackage.wh1<? super s41> wh1Var) {
        a aVar;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.h = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object objA = aVar.f;
        Object objF = z45.f();
        int i2 = aVar.h;
        if (i2 == 0) {
            kotlin.c.b(objA);
            w41 w41Var = this.c;
            aVar.b = this;
            aVar.c = context;
            aVar.d = dwVar;
            aVar.e = z;
            aVar.h = 1;
            objA = w41Var.a(context, s41Var, aVar);
            if (objA == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                s41 s41Var2 = (s41) aVar.b;
                kotlin.c.b(objA);
                return s41Var2;
            }
            z = aVar.e;
            dwVar = aVar.d;
            context = aVar.c;
            this = (eb1) aVar.b;
            kotlin.c.b(objA);
        }
        s41 s41Var3 = (s41) objA;
        if (s41Var3 == null) {
            return null;
        }
        if (z) {
            o8<?> o8VarB = s41Var3.b();
            if (o8VarB.R()) {
                aVar.b = s41Var3;
                aVar.c = null;
                aVar.d = null;
                aVar.h = 2;
                this.getClass();
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(aVar), 1);
                cancellableContinuationImpl.initCancellability();
                fb1 fb1Var = new fb1(cancellableContinuationImpl);
                boolean zA = x80.a(context, w80.c);
                if (y45.e(mb1.FIRST_VIDEO_PRELOADING_STRATEGY.a(), o8VarB.F()) && zA) {
                    this.b.a(s41Var3, fb1Var, dwVar);
                } else {
                    this.a.a(s41Var3, fb1Var, dwVar);
                }
                Object result = cancellableContinuationImpl.getResult();
                if (result == z45.f()) {
                    defpackage.pt1.c(aVar);
                }
                if (result != z45.f()) {
                    result = zfb.a;
                }
                if (result == objF) {
                    return objF;
                }
            }
        }
        return s41Var3;
    }

    public eb1(o3 o3Var, Context context, g5 g5Var, i00 i00Var, jb0 jb0Var, w41 w41Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(context, "context");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(i00Var, "defaultNativeVideoLoader");
        y45.j(jb0Var, "firstNativeVideoLoader");
        y45.j(w41Var, "nativeAdBlockVideoWrapperLoader");
        this.a = i00Var;
        this.b = jb0Var;
        this.c = w41Var;
    }

    public final void a(Context context, zb2<kb1> zb2Var, o8<?> o8Var) {
        y45.j(context, "context");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(o8Var, "adResponse");
        boolean zA = x80.a(context, w80.c);
        if (y45.e(mb1.FIRST_VIDEO_PRELOADING_STRATEGY.a(), o8Var.F()) && zA) {
            this.b.a(zb2Var.e());
        }
    }
}
