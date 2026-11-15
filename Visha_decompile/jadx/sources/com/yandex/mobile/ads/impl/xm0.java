package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class xm0 {
    private final am0 a;
    private final u00 b;

    public xm0(am0 am0Var, pn0 pn0Var) {
        this(am0Var, pn0Var, new u00(pn0Var));
    }

    public final ob2 a(t70 t70Var) {
        y45.j(t70Var, "instreamAdView");
        ob2 ob2VarA = this.a.a();
        if (ob2VarA != null) {
            return ob2VarA;
        }
        u00 u00Var = this.b;
        Context context = t70Var.getContext();
        y45.i(context, "getContext(...)");
        return u00Var.a(context, t70Var);
    }

    public xm0(am0 am0Var, pn0 pn0Var, u00 u00Var) {
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(pn0Var, "instreamDesign");
        y45.j(u00Var, "defaultUiElementsCreator");
        this.a = am0Var;
        this.b = u00Var;
    }
}
