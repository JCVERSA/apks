package com.yandex.mobile.ads.impl;

import android.view.View;
import com.yandex.div.core.view2.Div2View;
import defpackage.y45;

public final class l90 {
    private final k90 a;
    private final sp1 b;
    private final v10 c;

    public l90(k90 k90Var, sp1 sp1Var, v10 v10Var) {
        y45.j(k90Var, "feedDivContextFactory");
        y45.j(sp1Var, "reporter");
        y45.j(v10Var, "div2ViewFactory");
        this.a = k90Var;
        this.b = sp1Var;
        this.c = v10Var;
    }

    public final vk1 a(b30 b30Var, b02 b02Var) {
        y45.j(b30Var, "divKitDesign");
        y45.j(b02Var, "ad");
        try {
            uo uoVar = new uo();
            v20 v20Var = new v20(uoVar);
            j90 j90VarA = this.a.a(v20Var);
            j90VarA.a(b30Var.b(), b02Var);
            this.c.getClass();
            y45.j(j90VarA, "div2Context");
            Div2View div2View = new Div2View(j90VarA, null, 0, 6, null);
            div2View.setData(b30Var.b(), b30Var.c());
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            div2View.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            return new vk1(b30Var, div2View, uoVar, v20Var);
        } catch (Throwable th) {
            sp0.b(new Object[0]);
            this.b.reportError("Failed to preload feed view", th);
            return null;
        }
    }
}
