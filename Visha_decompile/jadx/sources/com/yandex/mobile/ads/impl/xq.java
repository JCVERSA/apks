package com.yandex.mobile.ads.impl;

import java.io.Serializable;
import java.util.Comparator;

final class xq<T> extends jf1<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Comparator<T> b;

    public xq(Comparator<T> comparator) {
        this.b = (Comparator) vj1.a(comparator);
    }

    @Override
    public final int compare(T t, T t2) {
        return this.b.compare(t, t2);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof xq) {
            return this.b.equals(((xq) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return this.b.toString();
    }
}
