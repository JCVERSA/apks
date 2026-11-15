package com.yandex.mobile.ads.impl;

import java.util.Map;

abstract class p<K, V> implements Map.Entry<K, V> {
    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return zd1.a(getKey(), entry.getKey()) && zd1.a(getValue(), entry.getValue());
    }

    @Override
    public final int hashCode() {
        K key = getKey();
        V value = getValue();
        return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
