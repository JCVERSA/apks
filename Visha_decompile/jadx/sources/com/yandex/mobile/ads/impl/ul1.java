package com.yandex.mobile.ads.impl;

import android.widget.ProgressBar;
import defpackage.y45;

public final class ul1 implements cd2 {
    private final cn0 a;
    private final an0 b;
    private final ol1 c;

    public ul1(cn0 cn0Var) {
        this(cn0Var, new an0(), new ol1());
    }

    @Override
    public final void a(long j, long j2) {
        bn0 bn0VarA = this.a.a();
        ProgressBar progressBarJ = null;
        t70 t70VarB = bn0VarA != null ? bn0VarA.b() : null;
        if (t70VarB != null) {
            this.b.getClass();
            y45.j(t70VarB, "instreamAdView");
            ob2 adUiElements = t70VarB.getAdUiElements();
            if (adUiElements != null) {
                progressBarJ = adUiElements.j();
            }
        }
        ProgressBar progressBar = progressBarJ;
        if (progressBar != null) {
            this.c.a(progressBar, j2, j);
        }
    }

    public ul1(cn0 cn0Var, an0 an0Var, ol1 ol1Var) {
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        y45.j(an0Var, "instreamAdViewUiElementsManager");
        y45.j(ol1Var, "progressBarConfigurator");
        this.a = cn0Var;
        this.b = an0Var;
        this.c = ol1Var;
    }
}
