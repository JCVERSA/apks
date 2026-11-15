package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import defpackage.y45;

public final class n50 {
    private final o10 a = new o10();

    public final boolean a(View view, int i, int i2, int i3, int i4) {
        y45.j(view, "view");
        int i5 = i3 - i;
        int i6 = i4 - i2;
        o10 o10Var = this.a;
        Context context = view.getContext();
        y45.i(context, "getContext(...)");
        o10Var.getClass();
        int iA = o10.a(context, 144.0f);
        o10 o10Var2 = this.a;
        Context context2 = view.getContext();
        y45.i(context2, "getContext(...)");
        o10Var2.getClass();
        return i5 >= iA && i6 >= o10.a(context2, 96.0f);
    }
}
