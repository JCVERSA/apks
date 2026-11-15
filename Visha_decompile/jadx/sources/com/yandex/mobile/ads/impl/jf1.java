package com.yandex.mobile.ads.impl;

import java.util.Comparator;

public abstract class jf1<T> implements Comparator<T> {
    public static <T> jf1<T> a(Comparator<T> comparator) {
        return comparator instanceof jf1 ? (jf1) comparator : new xq(comparator);
    }

    public <S extends T> jf1<S> b() {
        return new qr1(this);
    }

    public static <C extends Comparable> jf1<C> a() {
        return qc1.b;
    }
}
