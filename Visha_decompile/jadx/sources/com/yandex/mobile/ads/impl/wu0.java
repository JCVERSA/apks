package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class wu0 {
    private final String a;
    private final float b;

    public wu0(String str, float f) {
        this.a = str;
        this.b = f;
    }

    public final float a() {
        return this.b;
    }

    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wu0)) {
            return false;
        }
        wu0 wu0Var = (wu0) obj;
        return y45.e(this.a, wu0Var.a) && Float.compare(this.b, wu0Var.b) == 0;
    }

    public final int hashCode() {
        String str = this.a;
        return Float.hashCode(this.b) + ((str == null ? 0 : str.hashCode()) * 31);
    }

    public final String toString() {
        return "Media(htmlContent=" + this.a + ", aspectRatio=" + this.b + ")";
    }
}
