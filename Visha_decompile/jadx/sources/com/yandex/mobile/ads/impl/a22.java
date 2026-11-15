package com.yandex.mobile.ads.impl;

import android.text.TextUtils;
import android.widget.TextView;
import defpackage.y45;

public final class a22 implements fn0 {
    private final ig<?> a;
    private final w9 b;
    private final mg c;
    private final b22 d;

    public a22(ig<?> igVar, w9 w9Var, mg mgVar, b22 b22Var) {
        y45.j(mgVar, "clickConfigurator");
        y45.j(b22Var, "sponsoredTextFormatter");
        this.a = igVar;
        this.b = w9Var;
        this.c = mgVar;
        this.d = b22Var;
    }

    @Override
    public final void a(ob2 ob2Var) {
        y45.j(ob2Var, "uiElements");
        TextView textViewP = ob2Var.p();
        if (textViewP != null) {
            ig<?> igVar = this.a;
            Object objD = igVar != null ? igVar.d() : null;
            if (objD instanceof String) {
                textViewP.setText((CharSequence) objD);
                textViewP.setVisibility(0);
            }
            w9 w9Var = this.b;
            if (w9Var != null && w9Var.b()) {
                textViewP.setText(this.d.a(textViewP.getText().toString(), this.b));
                textViewP.setVisibility(0);
                textViewP.setSelected(true);
                textViewP.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                textViewP.setMarqueeRepeatLimit(-1);
            }
            this.c.a(textViewP, this.a);
        }
    }
}
