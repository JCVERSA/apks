package com.yandex.mobile.ads.impl;

import android.text.Layout;
import androidx.annotation.Nullable;

final class v72 {

    @Nullable
    private String a;
    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private float k;

    @Nullable
    private String l;

    @Nullable
    private Layout.Alignment o;

    @Nullable
    private Layout.Alignment p;

    @Nullable
    private r42 r;
    private int f = -1;
    private int g = -1;
    private int h = -1;
    private int i = -1;
    private int j = -1;
    private int m = -1;
    private int n = -1;
    private int q = -1;
    private float s = Float.MAX_VALUE;

    public final v72 a(@Nullable v72 v72Var) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (v72Var != null) {
            if (!this.c && v72Var.c) {
                this.b = v72Var.b;
                this.c = true;
            }
            if (this.h == -1) {
                this.h = v72Var.h;
            }
            if (this.i == -1) {
                this.i = v72Var.i;
            }
            if (this.a == null && (str = v72Var.a) != null) {
                this.a = str;
            }
            if (this.f == -1) {
                this.f = v72Var.f;
            }
            if (this.g == -1) {
                this.g = v72Var.g;
            }
            if (this.n == -1) {
                this.n = v72Var.n;
            }
            if (this.o == null && (alignment2 = v72Var.o) != null) {
                this.o = alignment2;
            }
            if (this.p == null && (alignment = v72Var.p) != null) {
                this.p = alignment;
            }
            if (this.q == -1) {
                this.q = v72Var.q;
            }
            if (this.j == -1) {
                this.j = v72Var.j;
                this.k = v72Var.k;
            }
            if (this.r == null) {
                this.r = v72Var.r;
            }
            if (this.s == Float.MAX_VALUE) {
                this.s = v72Var.s;
            }
            if (!this.e && v72Var.e) {
                this.d = v72Var.d;
                this.e = true;
            }
            if (this.m == -1 && (i = v72Var.m) != -1) {
                this.m = i;
            }
        }
        return this;
    }

    public final int b() {
        if (this.c) {
            return this.b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    @Nullable
    public final String c() {
        return this.a;
    }

    public final float d() {
        return this.k;
    }

    public final int e() {
        return this.j;
    }

    @Nullable
    public final String f() {
        return this.l;
    }

    @Nullable
    public final Layout.Alignment g() {
        return this.p;
    }

    public final int h() {
        return this.n;
    }

    public final int i() {
        return this.m;
    }

    public final float j() {
        return this.s;
    }

    public final int k() {
        int i = this.h;
        if (i == -1 && this.i == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.i == 1 ? 2 : 0);
    }

    @Nullable
    public final Layout.Alignment l() {
        return this.o;
    }

    public final boolean m() {
        return this.q == 1;
    }

    @Nullable
    public final r42 n() {
        return this.r;
    }

    public final boolean o() {
        return this.e;
    }

    public final boolean p() {
        return this.c;
    }

    public final boolean q() {
        return this.f == 1;
    }

    public final boolean r() {
        return this.g == 1;
    }

    public final void c(int i) {
        this.j = i;
    }

    public final v72 d(int i) {
        this.n = i;
        return this;
    }

    public final v72 e(int i) {
        this.m = i;
        return this;
    }

    public final v72 c(boolean z) {
        this.f = z ? 1 : 0;
        return this;
    }

    public final v72 d(boolean z) {
        this.q = z ? 1 : 0;
        return this;
    }

    public final v72 e(boolean z) {
        this.g = z ? 1 : 0;
        return this;
    }

    public final void b(int i) {
        this.b = i;
        this.c = true;
    }

    public final v72 b(@Nullable String str) {
        this.l = str;
        return this;
    }

    public final v72 b(boolean z) {
        this.i = z ? 1 : 0;
        return this;
    }

    public final v72 b(float f) {
        this.s = f;
        return this;
    }

    public final v72 b(@Nullable Layout.Alignment alignment) {
        this.o = alignment;
        return this;
    }

    public final int a() {
        if (this.e) {
            return this.d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public final void a(int i) {
        this.d = i;
        this.e = true;
    }

    public final v72 a(boolean z) {
        this.h = z ? 1 : 0;
        return this;
    }

    public final v72 a(@Nullable String str) {
        this.a = str;
        return this;
    }

    public final void a(float f) {
        this.k = f;
    }

    public final v72 a(@Nullable Layout.Alignment alignment) {
        this.p = alignment;
        return this;
    }

    public final v72 a(@Nullable r42 r42Var) {
        this.r = r42Var;
        return this;
    }
}
