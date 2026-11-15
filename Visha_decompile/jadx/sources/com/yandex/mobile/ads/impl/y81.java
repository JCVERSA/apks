package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class y81 {
    private final x81 a;
    private final z9 b;
    private final q41 c;

    public y81(bv1 bv1Var) {
        this(bv1Var, new x81(), new z9(), new q41(bv1Var));
    }

    public final ArrayList a(Context context, s41 s41Var, sj0 sj0Var, s51 s51Var, gc0 gc0Var, e51 e51Var) {
        Context context2 = context;
        y45.j(context2, "context");
        y45.j(s41Var, "nativeAdBlock");
        y45.j(sj0Var, "imageProvider");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(gc0Var, "forceController");
        y45.j(e51Var, "nativeAdControllers");
        ArrayList arrayList = new ArrayList();
        List<g41> listE = s41Var.c().e();
        ec1 ec1VarD = s51Var.d();
        for (g41 g41Var : listE) {
            dc1 dc1VarA = ec1VarD.a(g41Var);
            m61 m61Var = new m61(context2, g41Var, sj0Var, dc1VarA);
            ec1 ec1Var = ec1VarD;
            ArrayList arrayList2 = arrayList;
            kl klVarA = this.c.a(context, s41Var, this.b.a(g41Var), dc1VarA, s51Var, gc0Var, g41Var, s9.d);
            w81 w81VarA = this.a.a(g41Var.g());
            if (w81VarA != null) {
                arrayList2.add(w81VarA.a(context, g41Var, m61Var, sj0Var, klVarA, e51Var));
            }
            arrayList = arrayList2;
            ec1VarD = ec1Var;
            context2 = context;
        }
        return arrayList;
    }

    public y81(bv1 bv1Var, x81 x81Var, z9 z9Var, q41 q41Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(x81Var, "nativeGenericAdCreatorProvider");
        y45.j(z9Var, "adUnitAdNativeVisualBlockCreator");
        y45.j(q41Var, "nativeAdBinderConfigurationCreator");
        this.a = x81Var;
        this.b = z9Var;
        this.c = q41Var;
    }
}
