package com.yandex.mobile.ads.impl;

import android.widget.TextView;
import defpackage.y45;

public final class u30 implements fn0 {
    private final ig<?> a;
    private final mg b;

    public u30(ig<?> igVar, mg mgVar) {
        y45.j(mgVar, "clickConfigurator");
        this.a = igVar;
        this.b = mgVar;
    }

    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        TextView textViewF = ob2Var.f();
        ig<?> igVar = this.a;
        Object objD = igVar != null ? igVar.d() : null;
        if (textViewF != null) {
            if (!(objD instanceof String)) {
                textViewF.setVisibility(8);
                return;
            }
            textViewF.setText((CharSequence) objD);
            textViewF.setVisibility(0);
            this.b.a(textViewF, this.a);
        }
    }
}
