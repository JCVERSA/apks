package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;
import java.util.List;

public final class vo0 implements sg2 {
    private final cn0 a;

    public vo0(cn0 cn0Var) {
        y45.j(cn0Var, "instreamAdViewsHolderManager");
        this.a = cn0Var;
    }

    @Override
    public final List<xb2> a() {
        List<xb2> listA;
        bn0 bn0VarA = this.a.a();
        return (bn0VarA == null || (listA = bn0VarA.a()) == null) ? defpackage.y71.k() : listA;
    }

    @Override
    public final View getView() {
        bn0 bn0VarA = this.a.a();
        if (bn0VarA != null) {
            return bn0VarA.b();
        }
        return null;
    }
}
