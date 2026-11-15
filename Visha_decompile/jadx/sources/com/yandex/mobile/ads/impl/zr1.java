package com.yandex.mobile.ads.impl;

import android.view.View;
import android.widget.TextView;
import defpackage.y45;

public final class zr1 {
    private final n52 a;
    private final q42 b;

    public zr1(o52 o52Var) {
        this(o52Var, new q42());
    }

    public final void a(View view, long j, long j2) {
        y45.j(view, "timerView");
        view.setVisibility(0);
        TextView textViewA = this.a.a(view);
        if (textViewA != null) {
            this.b.getClass();
            q42.a(textViewA, j, j2);
        }
    }

    public zr1(o52 o52Var, q42 q42Var) {
        y45.j(o52Var, "timerViewProvider");
        y45.j(q42Var, "textDelayViewController");
        this.a = o52Var;
        this.b = q42Var;
    }
}
