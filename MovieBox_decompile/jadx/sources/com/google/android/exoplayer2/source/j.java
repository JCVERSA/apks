package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.l3;

public abstract class j extends l3 {

    protected final l3 f25555c;

    public j(l3 l3Var) {
        this.f25555c = l3Var;
    }

    @Override
    public int e(boolean z10) {
        return this.f25555c.e(z10);
    }

    @Override
    public int f(Object obj) {
        return this.f25555c.f(obj);
    }

    @Override
    public int g(boolean z10) {
        return this.f25555c.g(z10);
    }

    @Override
    public int i(int i10, int i11, boolean z10) {
        return this.f25555c.i(i10, i11, z10);
    }

    @Override
    public l3.b k(int i10, l3.b bVar, boolean z10) {
        return this.f25555c.k(i10, bVar, z10);
    }

    @Override
    public int m() {
        return this.f25555c.m();
    }

    @Override
    public int p(int i10, int i11, boolean z10) {
        return this.f25555c.p(i10, i11, z10);
    }

    @Override
    public Object q(int i10) {
        return this.f25555c.q(i10);
    }

    @Override
    public l3.d s(int i10, l3.d dVar, long j10) {
        return this.f25555c.s(i10, dVar, j10);
    }

    @Override
    public int t() {
        return this.f25555c.t();
    }
}
