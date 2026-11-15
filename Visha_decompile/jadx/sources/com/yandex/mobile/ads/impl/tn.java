package com.yandex.mobile.ads.impl;

import android.widget.ImageView;
import android.widget.TextView;
import defpackage.y45;

public final class tn implements fn0 {
    private final ig<?> a;
    private final wo b;

    public tn(ig<?> igVar, wo woVar) {
        y45.j(woVar, "clickControlConfigurator");
        this.a = igVar;
        this.b = woVar;
    }

    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        TextView textViewE = ob2Var.e();
        ImageView imageViewD = ob2Var.d();
        if (textViewE != null) {
            ig<?> igVar = this.a;
            Object objD = igVar != null ? igVar.d() : null;
            if (objD instanceof String) {
                textViewE.setVisibility(0);
                textViewE.setText((CharSequence) objD);
            } else {
                textViewE.setVisibility(8);
            }
            this.b.a(textViewE);
        }
        if (imageViewD != null) {
            this.b.a(imageViewD);
        }
    }
}
