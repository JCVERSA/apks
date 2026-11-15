package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

public class rw0 {
    public final Object a;
    public final int b;
    public final int c;
    public final long d;
    public final int e;

    public rw0(int i, long j, Object obj) {
        this(obj, -1, -1, j, i);
    }

    public final rw0 a(Object obj) {
        return this.a.equals(obj) ? this : new rw0(obj, this.b, this.c, this.d, this.e);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rw0)) {
            return false;
        }
        rw0 rw0Var = (rw0) obj;
        return this.a.equals(rw0Var.a) && this.b == rw0Var.b && this.c == rw0Var.c && this.d == rw0Var.d && this.e == rw0Var.e;
    }

    public final int hashCode() {
        return ((((((((this.a.hashCode() + 527) * 31) + this.b) * 31) + this.c) * 31) + ((int) this.d)) * 31) + this.e;
    }

    public rw0(rw0 rw0Var) {
        this.a = rw0Var.a;
        this.b = rw0Var.b;
        this.c = rw0Var.c;
        this.d = rw0Var.d;
        this.e = rw0Var.e;
    }

    public final boolean a() {
        return this.b != -1;
    }

    public rw0(Object obj) {
        this(obj, -1L);
    }

    public rw0(Object obj, int i, int i2, long j) {
        this(obj, i, i2, j, -1);
    }

    private rw0(Object obj, int i, int i2, long j, int i3) {
        this.a = obj;
        this.b = i;
        this.c = i2;
        this.d = j;
        this.e = i3;
    }

    public rw0(Object obj, long j) {
        this(obj, -1, -1, j, -1);
    }
}
