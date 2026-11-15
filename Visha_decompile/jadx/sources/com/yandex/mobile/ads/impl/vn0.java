package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class vn0 {
    private final l0 a;

    public static final class a implements n0 {
        @Override
        public final void onReturnedToApplication() {
        }
    }

    public vn0(Context context, bv1 bv1Var, uu uuVar, o3 o3Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(uuVar, "creative");
        y45.j(o3Var, "adConfiguration");
        a aVar = new a();
        xu xuVarD = uuVar.d();
        this.a = new l0(context, o3Var, null, aVar, xuVarD != null ? xuVarD.a() : null);
    }

    public final void a() {
        this.a.e();
    }
}
