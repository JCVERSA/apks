package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class v81 implements t41 {
    private final t51 a;

    public v81(bv1 bv1Var) {
        this(bv1Var, new t51(bv1Var));
    }

    @Override
    public final void a(Context context, s41 s41Var, sj0 sj0Var, r41 r41Var, s51 s51Var, e51 e51Var, g51 g51Var) {
        q61 q61VarA;
        y45.j(context, "context");
        y45.j(s41Var, "nativeAdBlock");
        y45.j(sj0Var, "imageProvider");
        y45.j(r41Var, "nativeAdBinderFactory");
        y45.j(s51Var, "nativeAdFactoriesProvider");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(g51Var, "nativeAdCreationListener");
        List<g41> listE = s41Var.c().e();
        if (listE == null || listE.isEmpty()) {
            q61VarA = null;
        } else if (listE.size() > 1) {
            q61VarA = r41Var.a(context, s41Var, sj0Var, s51Var, e51Var);
        } else {
            q61VarA = this.a.a(context, s41Var, sj0Var, r41Var, s51Var, e51Var, listE.get(0));
        }
        if (q61VarA != null) {
            g51Var.a(q61VarA);
        } else {
            g51Var.a(w7.x());
        }
    }

    public v81(bv1 bv1Var, t51 t51Var) {
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(t51Var, "nativeAdFactory");
        this.a = t51Var;
    }
}
