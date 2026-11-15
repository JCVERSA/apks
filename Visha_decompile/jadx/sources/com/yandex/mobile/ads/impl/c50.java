package com.yandex.mobile.ads.impl;

import android.widget.ImageView;
import android.widget.TextView;
import defpackage.y45;

public final class c50 implements gc {
    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        TextView textViewP = ob2Var.p();
        if (textViewP != null) {
            textViewP.setVisibility(8);
        }
        ImageView imageViewO = ob2Var.o();
        if (imageViewO == null) {
            return;
        }
        imageViewO.setVisibility(8);
    }
}
