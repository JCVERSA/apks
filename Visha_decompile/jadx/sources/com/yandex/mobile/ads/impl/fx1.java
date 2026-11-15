package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

public final class fx1 {
    public static final fx1 c;
    public final long a;
    public final long b;

    static {
        fx1 fx1Var = new fx1(0L, 0L);
        new fx1(Long.MAX_VALUE, Long.MAX_VALUE);
        new fx1(Long.MAX_VALUE, 0L);
        new fx1(0L, Long.MAX_VALUE);
        c = fx1Var;
    }

    public fx1(long j, long j2) {
        hg.a(j >= 0);
        hg.a(j2 >= 0);
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || fx1.class != obj.getClass()) {
            return false;
        }
        fx1 fx1Var = (fx1) obj;
        return this.a == fx1Var.a && this.b == fx1Var.b;
    }

    public final int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
