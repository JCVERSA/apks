package com.yandex.mobile.ads.impl;

import java.io.Serializable;

final class jk0<K, V> extends p<K, V> implements Serializable {
    private static final long serialVersionUID = 0;
    final K b;
    final V c;

    public jk0(K k, V v) {
        this.b = k;
        this.c = v;
    }

    @Override
    public final K getKey() {
        return this.b;
    }

    @Override
    public final V getValue() {
        return this.c;
    }

    @Override
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
