package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.c74;
import defpackage.y45;

public final class tt {
    private final c74 a;
    private final String b;
    private final int c;
    private final int d;

    public tt(c74 c74Var, String str, int i, int i2) {
        y45.j(c74Var, "getBitmap");
        this.a = c74Var;
        this.b = str;
        this.c = i;
        this.d = i2;
    }

    public final Bitmap a() {
        return (Bitmap) this.a.invoke();
    }

    public final int b() {
        return this.d;
    }

    public final String c() {
        return this.b;
    }

    public final int d() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tt)) {
            return false;
        }
        tt ttVar = (tt) obj;
        return y45.e(this.a, ttVar.a) && y45.e(this.b, ttVar.b) && this.c == ttVar.c && this.d == ttVar.d;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Integer.hashCode(this.d) + dy1.a(this.c, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
    }

    public final String toString() {
        return "CoreNativeAdImage(getBitmap=" + this.a + ", sizeType=" + this.b + ", width=" + this.c + ", height=" + this.d + ")";
    }
}
