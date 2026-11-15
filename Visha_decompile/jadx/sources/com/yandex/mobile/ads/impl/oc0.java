package com.yandex.mobile.ads.impl;

public abstract class oc0 extends i52 {
    protected final i52 c;

    public oc0(i52 i52Var) {
        this.c = i52Var;
    }

    @Override
    public final int a(boolean z) {
        return this.c.a(z);
    }

    @Override
    public final int b(boolean z) {
        return this.c.b(z);
    }

    @Override
    public int a(Object obj) {
        return this.c.a(obj);
    }

    @Override
    public final int b(int i, int i2, boolean z) {
        return this.c.b(i, i2, z);
    }

    @Override
    public final int a(int i, int i2, boolean z) {
        return this.c.a(i, i2, z);
    }

    @Override
    public final int b() {
        return this.c.b();
    }

    @Override
    public final int a() {
        return this.c.a();
    }

    @Override
    public Object a(int i) {
        return this.c.a(i);
    }

    @Override
    public i52.d a(int i, i52.d dVar, long j) {
        return this.c.a(i, dVar, j);
    }
}
