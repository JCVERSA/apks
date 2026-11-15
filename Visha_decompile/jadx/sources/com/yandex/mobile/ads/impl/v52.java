package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;

public final class v52 {
    public final int a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final jc0 f;
    public final int g;

    @Nullable
    public final long[] h;

    @Nullable
    public final long[] i;
    public final int j;

    @Nullable
    private final w52[] k;

    public v52(int i, int i2, long j, long j2, long j3, jc0 jc0Var, int i3, @Nullable w52[] w52VarArr, int i4, @Nullable long[] jArr, @Nullable long[] jArr2) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = jc0Var;
        this.g = i3;
        this.k = w52VarArr;
        this.j = i4;
        this.h = jArr;
        this.i = jArr2;
    }

    @Nullable
    public final w52 a(int i) {
        w52[] w52VarArr = this.k;
        if (w52VarArr == null) {
            return null;
        }
        return w52VarArr[i];
    }
}
