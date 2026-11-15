package com.yandex.mobile.ads.impl;

import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;

public final class fr0<V extends ViewGroup> {
    private final int a;
    private final Class<V> b;
    private final b10<V> c;
    private final c10 d;

    public fr0(@LayoutRes int i, ar arVar, c10 c10Var) {
        y45.j(ExtendedNativeAdView.class, "layoutViewClass");
        y45.j(arVar, "designComponentBinder");
        y45.j(c10Var, "designConstraint");
        this.a = i;
        this.b = ExtendedNativeAdView.class;
        this.c = arVar;
        this.d = c10Var;
    }

    public final b10<V> a() {
        return this.c;
    }

    public final c10 b() {
        return this.d;
    }

    public final int c() {
        return this.a;
    }

    public final Class<V> d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fr0)) {
            return false;
        }
        fr0 fr0Var = (fr0) obj;
        return this.a == fr0Var.a && y45.e(this.b, fr0Var.b) && y45.e(this.c, fr0Var.c) && y45.e(this.d, fr0Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "LayoutDesign(layoutId=" + this.a + ", layoutViewClass=" + this.b + ", designComponentBinder=" + this.c + ", designConstraint=" + this.d + ")";
    }
}
