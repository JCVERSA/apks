package com.yandex.mobile.ads.impl;

import java.util.Collection;
import java.util.Map;

public interface t31<K, V> {
    Map<K, Collection<V>> a();

    boolean put(K k, V v);

    Collection<V> values();
}
