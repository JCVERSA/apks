package com.yandex.mobile.ads.impl;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;

public final class vz1<V extends ViewGroup> implements b10<V>, f1 {
    private final m6 a;
    private final e1 b;
    private final b51 c;
    private final lz1 d;
    private p00 e;

    public vz1(m6 m6Var, e1 e1Var, b51 b51Var, lz1 lz1Var) {
        y45.j(e1Var, "adActivityEventController");
        y45.j(b51Var, "nativeAdControlViewProvider");
        y45.j(lz1Var, "skipAppearanceController");
        this.a = m6Var;
        this.b = e1Var;
        this.c = b51Var;
        this.d = lz1Var;
    }

    @Override
    public final void a(V v) {
        n6 n6VarB;
        y45.j(v, TtmlNode.RUBY_CONTAINER);
        View viewB = this.c.b(v);
        if (viewB != null) {
            this.b.a(this);
            lz1 lz1Var = this.d;
            m6 m6Var = this.a;
            Long lValueOf = (m6Var == null || (n6VarB = m6Var.b()) == null) ? null : Long.valueOf(n6VarB.a());
            p00 p00Var = new p00(viewB, lz1Var, lValueOf != null ? lValueOf.longValue() : 0L, pg1.a());
            this.e = p00Var;
            p00Var.b();
            if (viewB.getTag() == null) {
                viewB.setTag("skip_button");
            }
        }
    }

    @Override
    public final void b() {
        p00 p00Var = this.e;
        if (p00Var != null) {
            p00Var.c();
        }
    }

    @Override
    public final void c() {
        this.b.b(this);
        p00 p00Var = this.e;
        if (p00Var != null) {
            p00Var.a();
        }
    }

    @Override
    public final void a() {
        p00 p00Var = this.e;
        if (p00Var != null) {
            p00Var.d();
        }
    }
}
