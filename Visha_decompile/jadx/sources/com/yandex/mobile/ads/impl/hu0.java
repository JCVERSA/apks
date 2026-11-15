package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.o.a.C0325a;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

abstract class hu0<K, V> extends AbstractMap<K, V> {
    private transient Set<Map.Entry<K, V>> b;
    private transient Collection<V> c;

    @Override
    public final Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.b;
        if (set != null) {
            return set;
        }
        o.a.C0325a c0325a = ((o.a) this).new C0325a();
        this.b = c0325a;
        return c0325a;
    }

    @Override
    public final Collection<V> values() {
        Collection<V> collection = this.c;
        if (collection != null) {
            return collection;
        }
        gu0 gu0Var = new gu0(this);
        this.c = gu0Var;
        return gu0Var;
    }
}
