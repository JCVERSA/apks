package com.yandex.mobile.ads.impl;

public final class fw0 {
    private final int a;
    private final int b;
    private final int c;

    public fw0(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final int a() {
        return this.c;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fw0)) {
            return false;
        }
        fw0 fw0Var = (fw0) obj;
        return this.a == fw0Var.a && this.b == fw0Var.b && this.c == fw0Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + dy1.a(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return "MediaFileInfo(width=" + this.a + ", height=" + this.b + ", bitrate=" + this.c + ")";
    }
}
