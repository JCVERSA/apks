package com.yandex.mobile.ads.impl;

import android.widget.TextView;
import com.monetization.ads.fullscreen.template.view.ExtendedTextView;
import defpackage.y45;

public final class kj2 implements fn0 {
    private final ig<?> a;
    private final mg b;

    public kj2(ig<?> igVar, mg mgVar) {
        y45.j(mgVar, "assetClickConfigurator");
        this.a = igVar;
        this.b = mgVar;
    }

    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        TextView textViewS = ob2Var.s();
        ig<?> igVar = this.a;
        Object objD = igVar != null ? igVar.d() : null;
        if (!(textViewS instanceof ExtendedTextView) || !(objD instanceof String)) {
            if (textViewS == null) {
                return;
            }
            textViewS.setVisibility(8);
            return;
        }
        kb0 kb0Var = new kb0(ob2Var.a());
        ExtendedTextView extendedTextView = (ExtendedTextView) textViewS;
        extendedTextView.setText((CharSequence) objD);
        extendedTextView.setVisibility(0);
        extendedTextView.setAutoSizeTextType(1);
        extendedTextView.setMeasureSpecProvider(kb0Var);
        this.b.a(textViewS, this.a);
    }
}
