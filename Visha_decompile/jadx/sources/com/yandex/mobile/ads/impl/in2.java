package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Set;

public final class in2 implements r92 {
    private final we a;
    private final ju1 b;

    public in2(we weVar, Context context, ju1 ju1Var) {
        y45.j(weVar, "appMetricaAdapter");
        y45.j(context, "context");
        this.a = weVar;
        this.b = ju1Var;
    }

    @Override
    public final void setExperiments(String str) {
        y45.j(str, "experiments");
        ju1 ju1Var = this.b;
        if (ju1Var == null || !ju1Var.B0()) {
            return;
        }
        this.a.b(str);
    }

    @Override
    public final void setTriggeredTestIds(Set<Long> set) {
        y45.j(set, "testIds");
        ju1 ju1Var = this.b;
        if (ju1Var == null || !ju1Var.B0()) {
            return;
        }
        this.a.a(set);
    }
}
