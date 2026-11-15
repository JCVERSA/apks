package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class w21 extends yf1 {
    private final n21 k;
    private a l;
    private final a31 m;
    private su0 n;
    private boolean o;

    public interface a {
        void a();

        void b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w21(Context context) {
        super(context);
        y45.j(context, "context");
        n21 n21Var = new n21();
        this.k = n21Var;
        this.m = new a31(this, n21Var);
        this.n = new ry1();
    }

    @Override
    public final void a() {
        super.a();
        a aVar = this.l;
        if (aVar != null) {
            this.o = true;
            aVar.b();
            this.l = null;
        }
    }

    public final void c(String str) {
        y45.j(str, "htmlResponse");
        if (this.o) {
            return;
        }
        this.m.b(str);
    }

    @Override
    public final void h() {
        this.m.b();
    }

    public final n21 k() {
        return this.k;
    }

    @Override
    public final void onMeasure(int i, int i2) {
        su0.a aVarA = this.n.a(i, i2);
        super.onMeasure(aVarA.a, aVarA.b);
    }

    public final void setAspectRatio(float f) {
        this.n = new lm1(f);
    }

    public final void setClickListener(zo zoVar) {
        y45.j(zoVar, "clickListener");
        this.m.a(zoVar);
    }

    public final void setPreloadListener(a aVar) {
        this.l = aVar;
    }

    @Override
    public final void a(int i) {
        super.a(i);
        if (this.l != null) {
            stopLoading();
            a aVar = this.l;
            if (aVar != null) {
                aVar.a();
            }
            this.l = null;
        }
    }
}
