package com.yandex.mobile.ads.impl;

final class ez1<E> extends mk0<E> {
    final transient E d;

    public ez1(E e) {
        this.d = (E) vj1.a(e);
    }

    @Override
    public final int a(int i, Object[] objArr) {
        objArr[i] = this.d;
        return i + 1;
    }

    @Override
    public final kk0<E> b() {
        return kk0.a(this.d);
    }

    @Override
    public final boolean contains(Object obj) {
        return this.d.equals(obj);
    }

    @Override
    public final boolean f() {
        return false;
    }

    @Override
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override
    public final i82<E> iterator() {
        return new lq0(this.d);
    }

    @Override
    public final int size() {
        return 1;
    }

    @Override
    public final String toString() {
        return "[" + this.d.toString() + ']';
    }
}
