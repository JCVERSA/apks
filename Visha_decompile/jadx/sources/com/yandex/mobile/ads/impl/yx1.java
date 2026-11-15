package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class yx1 {
    private final String a;
    private final Long b;
    private final boolean c;
    private final boolean d;
    private final fz1 e;

    public yx1(String str, Long l, boolean z, boolean z2, fz1 fz1Var) {
        this.a = str;
        this.b = l;
        this.c = z;
        this.d = z2;
        this.e = fz1Var;
    }

    public final fz1 a() {
        return this.e;
    }

    public final Long b() {
        return this.b;
    }

    public final boolean c() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yx1)) {
            return false;
        }
        yx1 yx1Var = (yx1) obj;
        return y45.e(this.a, yx1Var.a) && y45.e(this.b, yx1Var.b) && this.c == yx1Var.c && this.d == yx1Var.d && y45.e(this.e, yx1Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.b;
        int iA = a7.a(this.d, a7.a(this.c, (iHashCode + (l == null ? 0 : l.hashCode())) * 31, 31), 31);
        fz1 fz1Var = this.e;
        return iA + (fz1Var != null ? fz1Var.hashCode() : 0);
    }

    public final String toString() {
        return "Settings(templateType=" + this.a + ", multiBannerAutoScrollInterval=" + this.b + ", isHighlightingEnabled=" + this.c + ", isLoopingVideo=" + this.d + ", mediaAssetImageFallbackSize=" + this.e + ")";
    }
}
