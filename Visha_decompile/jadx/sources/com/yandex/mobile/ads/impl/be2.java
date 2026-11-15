package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.z45;
import java.util.ArrayList;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;

public final class be2 {
    private final yd2 a;

    public be2(Context context, o3 o3Var, ya1 ya1Var, qf1 qf1Var) {
        this(context, o3Var, ya1Var, qf1Var, new yd2(context, o3Var, ya1Var, qf1Var));
    }

    public final Object a(ArrayList arrayList, defpackage.wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        this.a.a(arrayList, new ae2(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            defpackage.pt1.c(wh1Var);
        }
        return result;
    }

    public be2(Context context, o3 o3Var, ya1 ya1Var, qf1 qf1Var, yd2 yd2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ya1Var, "reportParametersProvider");
        y45.j(qf1Var, "requestConfigurationParametersProvider");
        y45.j(yd2Var, "videoAdsResponseHandler");
        this.a = yd2Var;
    }
}
