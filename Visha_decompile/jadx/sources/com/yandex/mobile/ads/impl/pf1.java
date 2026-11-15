package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class pf1 implements gz1 {
    private final Context a;
    private final gz1 b;
    private final gz1 c;

    public pf1(Context context, rb0 rb0Var, rb0 rb0Var2) {
        y45.j(context, "appContext");
        y45.j(rb0Var, "portraitSizeInfo");
        y45.j(rb0Var2, "landscapeSizeInfo");
        this.a = context;
        this.b = rb0Var;
        this.c = rb0Var2;
    }

    @Override
    public final int a(Context context) {
        y45.j(context, "context");
        return ks.a(context) == kf1.c ? this.c.a(context) : this.b.a(context);
    }

    @Override
    public final int b(Context context) {
        y45.j(context, "context");
        return ks.a(context) == kf1.c ? this.c.b(context) : this.b.b(context);
    }

    @Override
    public final int c(Context context) {
        y45.j(context, "context");
        return ks.a(context) == kf1.c ? this.c.c(context) : this.b.c(context);
    }

    @Override
    public final int d(Context context) {
        y45.j(context, "context");
        return ks.a(context) == kf1.c ? this.c.d(context) : this.b.d(context);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pf1)) {
            return false;
        }
        pf1 pf1Var = (pf1) obj;
        return y45.e(this.a, pf1Var.a) && y45.e(this.b, pf1Var.b) && y45.e(this.c, pf1Var.c);
    }

    @Override
    public final int getHeight() {
        return ks.a(this.a) == kf1.c ? this.c.getHeight() : this.b.getHeight();
    }

    @Override
    public final int getWidth() {
        return ks.a(this.a) == kf1.c ? this.c.getWidth() : this.b.getWidth();
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return ks.a(this.a) == kf1.c ? this.c.toString() : this.b.toString();
    }

    @Override
    public final gz1.a a() {
        if (ks.a(this.a) == kf1.c) {
            return this.c.a();
        }
        return this.b.a();
    }
}
