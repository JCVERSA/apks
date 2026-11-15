package com.yandex.mobile.ads.impl;

import java.io.Serializable;

final class qr1<T> extends jf1<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final jf1<? super T> b;

    public qr1(jf1<? super T> jf1Var) {
        this.b = (jf1) vj1.a(jf1Var);
    }

    @Override
    public final <S extends T> jf1<S> b() {
        return this.b;
    }

    @Override
    public final int compare(T t, T t2) {
        return this.b.compare(t2, t);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof qr1) {
            return this.b.equals(((qr1) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return -this.b.hashCode();
    }

    public final String toString() {
        return this.b + ".reverse()";
    }
}
