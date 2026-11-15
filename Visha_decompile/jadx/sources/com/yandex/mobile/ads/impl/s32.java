package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.List;

public abstract class s32 extends sy implements n32 {

    @Nullable
    private n32 d;
    private long e;

    @Override
    public final long a(int i) {
        n32 n32Var = this.d;
        n32Var.getClass();
        return n32Var.a(i) + this.e;
    }

    @Override
    public final void b() {
        super.b();
        this.d = null;
    }

    @Override
    public final List<hv> b(long j) {
        n32 n32Var = this.d;
        n32Var.getClass();
        return n32Var.b(j - this.e);
    }

    @Override
    public final int a() {
        n32 n32Var = this.d;
        n32Var.getClass();
        return n32Var.a();
    }

    @Override
    public final int a(long j) {
        n32 n32Var = this.d;
        n32Var.getClass();
        return n32Var.a(j - this.e);
    }

    public final void a(long j, n32 n32Var, long j2) {
        this.c = j;
        this.d = n32Var;
        if (j2 != Long.MAX_VALUE) {
            j = j2;
        }
        this.e = j;
    }
}
