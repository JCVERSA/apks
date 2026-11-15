package com.yandex.mobile.ads.impl;

import java.util.Objects;

final class lo1<E> extends kk0<E> {
    static final kk0<Object> g = new lo1(0, new Object[0]);
    final transient Object[] e;
    private final transient int f;

    public lo1(int i, Object[] objArr) {
        this.e = objArr;
        this.f = i;
    }

    @Override
    public final int a(int i, Object[] objArr) {
        System.arraycopy(this.e, 0, objArr, i, this.f);
        return i + this.f;
    }

    @Override
    public final Object[] c() {
        return this.e;
    }

    @Override
    public final int d() {
        return this.f;
    }

    @Override
    public final int e() {
        return 0;
    }

    @Override
    public final boolean f() {
        return false;
    }

    @Override
    public final E get(int i) {
        vj1.a(i, this.f);
        E e = (E) this.e[i];
        Objects.requireNonNull(e);
        return e;
    }

    @Override
    public final int size() {
        return this.f;
    }
}
