package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import defpackage.y45;

public final class un implements fn0 {
    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        View viewC = ob2Var.c();
        TextView textViewF = ob2Var.f();
        ImageView imageViewG = ob2Var.g();
        if (textViewF == null || textViewF.getVisibility() != 8 || imageViewG == null || imageViewG.getVisibility() != 8 || viewC == null) {
            return;
        }
        viewC.setBackground(null);
    }
}
