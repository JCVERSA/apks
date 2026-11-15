package com.yandex.mobile.ads.impl;

import android.graphics.RectF;
import defpackage.y45;

public final class p70 {
    private final int a;
    private final RectF b;

    public p70(int i, RectF rectF) {
        this.a = i;
        this.b = rectF;
    }

    public final int a() {
        return this.a;
    }

    public final RectF b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p70)) {
            return false;
        }
        p70 p70Var = (p70) obj;
        return this.a == p70Var.a && y45.e(this.b, p70Var.b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        RectF rectF = this.b;
        return iHashCode + (rectF == null ? 0 : rectF.hashCode());
    }

    public final String toString() {
        return "Exposure(exposedPercentage=" + this.a + ", visibleRectangle=" + this.b + ")";
    }
}
