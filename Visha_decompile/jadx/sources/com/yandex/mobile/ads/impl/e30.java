package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class e30 implements c10 {
    private final o8<?> a;

    public e30(o8<?> o8Var) {
        y45.j(o8Var, "adResponse");
        this.a = o8Var;
    }

    @Override
    public final boolean a(Context context) {
        y45.j(context, "context");
        return y45.e(g10.DIV_KIT.a(), this.a.w());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e30) && y45.e(this.a, ((e30) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DivKitDesignConstraint(adResponse=" + this.a + ")";
    }
}
