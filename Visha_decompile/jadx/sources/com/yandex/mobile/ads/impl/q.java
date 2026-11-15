package com.yandex.mobile.ads.impl;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class q<K, V> implements t31<K, V> {
    private transient Set<K> b;
    private transient Collection<V> c;
    private transient Map<K, Collection<V>> d;

    public class a extends AbstractCollection<V> {
        final q b;

        public a(o oVar) {
            this.b = oVar;
        }

        @Override
        public final void clear() {
            ((o) this.b).d();
        }

        @Override
        public final boolean contains(Object obj) {
            Iterator<V> it = ((hu0) this.b.a()).values().iterator();
            while (it.hasNext()) {
                if (((Collection) it.next()).contains(obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public final Iterator<V> iterator() {
            o oVar = (o) this.b;
            oVar.getClass();
            return new n(oVar);
        }

        @Override
        public final int size() {
            return ((o) this.b).g();
        }
    }

    @Override
    public Map<K, Collection<V>> a() {
        Map<K, Collection<V>> map = this.d;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> mapE = ((x31) this).e();
        this.d = mapE;
        return mapE;
    }

    public final Set<K> b() {
        Set<K> set = this.b;
        if (set != null) {
            return set;
        }
        Set<K> setF = ((x31) this).f();
        this.b = setF;
        return setF;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t31)) {
            return false;
        }
        return ((o.a) ((m) this).a()).equals(((t31) obj).a());
    }

    public final int hashCode() {
        return ((o.a) a()).d.hashCode();
    }

    public final String toString() {
        return ((o.a) a()).d.toString();
    }

    @Override
    public Collection<V> values() {
        Collection<V> collection = this.c;
        if (collection != null) {
            return collection;
        }
        a aVar = new a((o) this);
        this.c = aVar;
        return aVar;
    }
}
