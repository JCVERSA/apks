package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class y21 extends vg2<w21, wu0> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y21(w21 w21Var) {
        super(w21Var);
        y45.j(w21Var, "mraidWebView");
    }

    @Override
    public final void a(ig igVar, yg2 yg2Var, wu0 wu0Var) {
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        w21 w21VarB = b();
        if (w21VarB == null) {
            return;
        }
        yg2Var.a(w21VarB, igVar);
        yg2Var.a((ig<?>) igVar, new i21(w21VarB));
    }

    @Override
    public final void b(View view, wu0 wu0Var) {
        w21 w21Var = (w21) view;
        wu0 wu0Var2 = wu0Var;
        y45.j(w21Var, "mraidWebView");
        y45.j(wu0Var2, "media");
        String strB = wu0Var2.b();
        if (strB != null && strB.length() > 0) {
            w21Var.setAspectRatio(wu0Var2.a());
            w21Var.c(strB);
        }
    }

    @Override
    public final boolean a(View view, wu0 wu0Var) {
        y45.j((w21) view, "mraidWebView");
        y45.j(wu0Var, "media");
        return true;
    }
}
