package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.z45;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class wv1 {
    private final ov1 a;

    public wv1(Context context, en2 en2Var, defpackage.nk1 nk1Var, g5 g5Var, p50 p50Var, jc jcVar) {
        this(context, en2Var, nk1Var, g5Var, p50Var, jcVar, new ov1(context, en2Var, nk1Var, g5Var, p50Var, jcVar, 2097088));
    }

    public final Object a(defpackage.wh1 wh1Var) {
        gl0 gl0Var = gl0.f;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new uv1(this));
        this.a.a(gl0Var, new vv1(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            defpackage.pt1.c(wh1Var);
        }
        return result;
    }

    public wv1(Context context, en2 en2Var, defpackage.nk1 nk1Var, g5 g5Var, p50 p50Var, jc jcVar, ov1 ov1Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(nk1Var, "coroutineScope");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(p50Var, "environmentController");
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(ov1Var, "sdkInitializer");
        this.a = ov1Var;
    }
}
