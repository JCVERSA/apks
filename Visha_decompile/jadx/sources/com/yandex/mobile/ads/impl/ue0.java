package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ue0 implements qc {
    private final xe0 a;
    private final ze0 b;

    public ue0(Context context) {
        this(context, new xe0(context), new ze0(context));
    }

    @Override
    public final lc a() {
        lc lcVarA = this.a.a();
        return lcVarA == null ? this.b.a() : lcVarA;
    }

    public ue0(Context context, xe0 xe0Var, ze0 ze0Var) {
        y45.j(context, "context");
        y45.j(xe0Var, "gmsClientAdvertisingInfoProvider");
        y45.j(ze0Var, "gmsServiceAdvertisingInfoProvider");
        this.a = xe0Var;
        this.b = ze0Var;
    }
}
