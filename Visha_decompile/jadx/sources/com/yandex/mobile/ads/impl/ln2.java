package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ln2 implements db2 {
    private final ve1 a;

    public ln2(ve1 ve1Var) {
        y45.j(ve1Var, "omSdkUsageValidator");
        this.a = ve1Var;
    }

    @Override
    public final kn2 a(Context context) {
        y45.j(context, "context");
        if (this.a.a(context)) {
            return new kn2(context);
        }
        return null;
    }
}
