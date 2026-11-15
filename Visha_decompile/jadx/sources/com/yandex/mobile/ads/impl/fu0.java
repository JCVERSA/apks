package com.yandex.mobile.ads.impl;

import java.util.Map;

class fu0<K, V> extends wx1.c<K> {
    final Map<K, V> b;

    public fu0(Map<K, V> map) {
        this.b = (Map) vj1.a(map);
    }

    @Override
    public final boolean contains(Object obj) {
        return this.b.containsKey(obj);
    }

    @Override
    public final boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override
    public final int size() {
        return this.b.size();
    }
}
