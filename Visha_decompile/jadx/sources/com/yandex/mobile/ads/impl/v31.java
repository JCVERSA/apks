package com.yandex.mobile.ads.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public abstract class v31<K0, V0> {

    public static final class a<V> implements t32<List<V>>, Serializable {
        private final int b;

        public a(int i) {
            this.b = pq.a(i, "expectedValuesPerKey");
        }

        @Override
        public final Object get() {
            return new ArrayList(this.b);
        }
    }

    public static abstract class b<K0, V0> extends v31<K0, V0> {
        public b() {
            super();
        }

        public abstract <K extends K0, V extends V0> zr0<K, V> b();
    }

    public static abstract class c<K0> {
        public final b<K0, Object> a() {
            pq.a(2, "expectedValuesPerKey");
            return new w31(this);
        }

        public abstract <K extends K0, V> Map<K, Collection<V>> b();
    }

    public static c<Comparable> a() {
        qc1 qc1Var = qc1.b;
        qc1Var.getClass();
        return new u31(qc1Var);
    }

    private v31() {
    }
}
