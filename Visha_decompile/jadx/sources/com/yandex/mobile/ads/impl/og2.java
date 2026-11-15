package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class og2 {
    private final fb2 a;
    private final rz1 b;

    public og2(fb2 fb2Var) {
        this(fb2Var, new rz1());
    }

    public final ng2 a(Context context, zb2 zb2Var, ad2 ad2Var) {
        y45.j(context, "context");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(ad2Var, "videoAdPosition");
        kg2 kg2Var = new kg2(context);
        re2 re2Var = new re2(context);
        gr grVar = new gr();
        grVar.a(new dv(zb2Var.b(), kg2Var, re2Var));
        grVar.a(new sd2(zb2Var.g(), kg2Var));
        nn2 nn2VarA = this.a.a(context, ad2Var, this.b.a(zb2Var.b()), zb2Var.g().d());
        if (nn2VarA != null) {
            grVar.a(nn2VarA);
        }
        return new ng2(grVar);
    }

    public og2(fb2 fb2Var, rz1 rz1Var) {
        y45.j(fb2Var, "verificationVideoTrackerProvider");
        y45.j(rz1Var, "skipInfoParser");
        this.a = fb2Var;
        this.b = rz1Var;
    }
}
