package com.yandex.mobile.ads.impl;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

final class u31 extends v31.c<Object> {
    final Comparator a;

    public u31(Comparator comparator) {
        this.a = comparator;
    }

    @Override
    public final <K, V> Map<K, Collection<V>> b() {
        return new TreeMap(this.a);
    }
}
