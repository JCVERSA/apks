package com.yandex.mobile.ads.impl;

import android.graphics.Typeface;
import defpackage.y45;

public final class ec0 {
    private final Typeface a;
    private final Typeface b;
    private final Typeface c;
    private final Typeface d;

    public ec0(Typeface typeface, Typeface typeface2, Typeface typeface3, Typeface typeface4) {
        this.a = typeface;
        this.b = typeface2;
        this.c = typeface3;
        this.d = typeface4;
    }

    public final Typeface a() {
        return this.d;
    }

    public final Typeface b() {
        return this.a;
    }

    public final Typeface c() {
        return this.c;
    }

    public final Typeface d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ec0)) {
            return false;
        }
        ec0 ec0Var = (ec0) obj;
        return y45.e(this.a, ec0Var.a) && y45.e(this.b, ec0Var.b) && y45.e(this.c, ec0Var.c) && y45.e(this.d, ec0Var.d);
    }

    public final int hashCode() {
        Typeface typeface = this.a;
        int iHashCode = (typeface == null ? 0 : typeface.hashCode()) * 31;
        Typeface typeface2 = this.b;
        int iHashCode2 = (iHashCode + (typeface2 == null ? 0 : typeface2.hashCode())) * 31;
        Typeface typeface3 = this.c;
        int iHashCode3 = (iHashCode2 + (typeface3 == null ? 0 : typeface3.hashCode())) * 31;
        Typeface typeface4 = this.d;
        return iHashCode3 + (typeface4 != null ? typeface4.hashCode() : 0);
    }

    public final String toString() {
        return "FontTypefaceData(light=" + this.a + ", regular=" + this.b + ", medium=" + this.c + ", bold=" + this.d + ")";
    }
}
