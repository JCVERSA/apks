package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

public final class gx1 {
    public static final gx1 c = new gx1(0, 0);
    public final long a;
    public final long b;

    public gx1(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || gx1.class != obj.getClass()) {
            return false;
        }
        gx1 gx1Var = (gx1) obj;
        return this.a == gx1Var.a && this.b == gx1Var.b;
    }

    public final int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }

    public final String toString() {
        return "[timeUs=" + this.a + ", position=" + this.b + "]";
    }
}
