package com.yandex.mobile.ads.impl;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.util.List;

final class zh1 {
    private static final vw0.b s = new vw0.b(new Object());
    public final i52 a;
    public final vw0.b b;
    public final long c;
    public final long d;
    public final int e;

    @Nullable
    public final m60 f;
    public final boolean g;
    public final z52 h;
    public final g62 i;
    public final List<k01> j;
    public final vw0.b k;
    public final boolean l;
    public final int m;
    public final bi1 n;
    public final boolean o;
    public volatile long p;
    public volatile long q;
    public volatile long r;

    public zh1(i52 i52Var, vw0.b bVar, long j, long j2, int i, @Nullable m60 m60Var, boolean z, z52 z52Var, g62 g62Var, List<k01> list, vw0.b bVar2, boolean z2, int i2, bi1 bi1Var, long j3, long j4, long j5, boolean z3) {
        this.a = i52Var;
        this.b = bVar;
        this.c = j;
        this.d = j2;
        this.e = i;
        this.f = m60Var;
        this.g = z;
        this.h = z52Var;
        this.i = g62Var;
        this.j = list;
        this.k = bVar2;
        this.l = z2;
        this.m = i2;
        this.n = bi1Var;
        this.p = j3;
        this.q = j4;
        this.r = j5;
        this.o = z3;
    }

    public static zh1 a(g62 g62Var) {
        i52 i52Var = i52.b;
        vw0.b bVar = s;
        return new zh1(i52Var, bVar, C.TIME_UNSET, 0L, 1, null, false, z52.e, g62Var, kk0.h(), bVar, false, 0, bi1.e, 0L, 0L, 0L, false);
    }

    public static vw0.b a() {
        return s;
    }

    @CheckResult
    public final zh1 a(vw0.b bVar, long j, long j2, long j3, long j4, z52 z52Var, g62 g62Var, List<k01> list) {
        return new zh1(this.a, bVar, j2, j3, this.e, this.f, this.g, z52Var, g62Var, list, this.k, this.l, this.m, this.n, this.p, j4, j, this.o);
    }

    @CheckResult
    public final zh1 a(i52 i52Var) {
        return new zh1(i52Var, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    @CheckResult
    public final zh1 a(int i) {
        return new zh1(this.a, this.b, this.c, this.d, i, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    @CheckResult
    public final zh1 a(@Nullable m60 m60Var) {
        return new zh1(this.a, this.b, this.c, this.d, this.e, m60Var, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }

    @CheckResult
    public final zh1 a(vw0.b bVar) {
        return new zh1(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, bVar, this.l, this.m, this.n, this.p, this.q, this.r, this.o);
    }
}
