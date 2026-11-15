package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ey1 {
    private final long a;
    private final String b;
    private final int c;
    private final fy1 d;

    public ey1() {
        this(0);
    }

    public final long a() {
        return this.a;
    }

    public final fy1 b() {
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
        if (!(obj instanceof ey1)) {
            return false;
        }
        ey1 ey1Var = (ey1) obj;
        return this.a == ey1Var.a && y45.e(this.b, ey1Var.b) && this.c == ey1Var.c && this.d == ey1Var.d;
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        String str = this.b;
        return this.d.hashCode() + dy1.a(this.c, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
    }

    public final String toString() {
        return "ShowNotice(delay=" + this.a + ", url=" + this.b + ", visibilityPercent=" + this.c + ", type=" + this.d + ")";
    }

    public ey1(int i) {
        this(0, 0L, fy1.d, null);
    }

    public ey1(int i, long j, fy1 fy1Var, String str) {
        y45.j(fy1Var, "type");
        this.a = j;
        this.b = str;
        this.c = i;
        this.d = fy1Var;
    }
}
