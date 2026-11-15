package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.div2.DivData;
import defpackage.y45;

public final class w10 {
    private final sp1 a;
    private final f02 b;

    public w10(sp1 sp1Var) {
        this(sp1Var, new f02());
    }

    public final defpackage.jh2 a(Context context, DivData divData, q61 q61Var, v20 v20Var) {
        y45.j(context, "context");
        y45.j(divData, "divData");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(v20Var, "clickHandler");
        if (!(q61Var instanceof b02)) {
            defpackage.jh2 jh2VarA = new a30(context, v20Var).a();
            y45.g(jh2VarA);
            return jh2VarA;
        }
        e02 e02Var = new e02(this.a);
        e02Var.a(divData, (b02) q61Var);
        this.b.getClass();
        return f02.a(context, e02Var, v20Var);
    }

    public w10(sp1 sp1Var, f02 f02Var) {
        y45.j(sp1Var, "reporter");
        y45.j(f02Var, "sliderDivConfigurationCreator");
        this.a = sp1Var;
        this.b = f02Var;
    }
}
