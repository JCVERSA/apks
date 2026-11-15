package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class os1 {
    private final ps1 a;

    public os1(um1 um1Var) {
        y45.j(um1Var, "rewardedListener");
        this.a = um1Var;
    }

    public final ns1 a(Context context, o8 o8Var, o3 o3Var) {
        ur1 ur1VarJ;
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        if (o8Var == null || (ur1VarJ = o8Var.J()) == null) {
            return null;
        }
        if (ur1VarJ.e()) {
            rx1 rx1VarD = ur1VarJ.d();
            if (rx1VarD != null) {
                return new qx1(context, o3Var, rx1VarD, new v9(context, o3Var));
            }
            return null;
        }
        hp hpVarC = ur1VarJ.c();
        if (hpVarC != null) {
            return new gp(hpVarC, this.a, new ow1(hpVarC.c(), hpVarC.d()));
        }
        return null;
    }
}
