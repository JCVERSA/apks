package com.yandex.mobile.ads.impl;

public final class gb2 {
    private final int a;
    private final int b;
    private final int c;

    public gb2(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final int a() {
        return this.a;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gb2)) {
            return false;
        }
        gb2 gb2Var = (gb2) obj;
        return this.a == gb2Var.a && this.b == gb2Var.b && this.c == gb2Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + dy1.a(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return "VersionInfo(majorVersion=" + this.a + ", minorVersion=" + this.b + ", patchVersion=" + this.c + ")";
    }
}
