package com.google.common.collect;

import defpackage.dgb;
import java.io.Serializable;
import java.util.Map;

final class ImmutableMapValues<K, V> extends ImmutableCollection<V> {
    private final ImmutableMap<K, V> map;

    public static class SerializedForm<V> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<?, V> map;

        public SerializedForm(ImmutableMap<?, V> immutableMap) {
            this.map = immutableMap;
        }

        public Object readResolve() {
            return this.map.values();
        }
    }

    public class a extends dgb {
        public final dgb b;

        public a() {
            this.b = ImmutableMapValues.this.map.entrySet().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.b.hasNext();
        }

        @Override
        public Object next() {
            return ((Map.Entry) this.b.next()).getValue();
        }
    }

    public ImmutableMapValues(ImmutableMap<K, V> immutableMap) {
        this.map = immutableMap;
    }

    @Override
    public ImmutableList<V> asList() {
        final ImmutableList<Map.Entry<K, V>> immutableListAsList = this.map.entrySet().asList();
        return new ImmutableList<V>(this) {
            final ImmutableMapValues this$0;

            {
                this.this$0 = this;
            }

            @Override
            public V get(int i) {
                return (V) ((Map.Entry) immutableListAsList.get(i)).getValue();
            }

            @Override
            public boolean isPartialView() {
                return true;
            }

            @Override
            public int size() {
                return immutableListAsList.size();
            }

            @Override
            public Object writeReplace() {
                return super.writeReplace();
            }
        };
    }

    @Override
    public boolean contains(Object obj) {
        return obj != null && Iterators.f(iterator(), obj);
    }

    @Override
    public boolean isPartialView() {
        return true;
    }

    @Override
    public int size() {
        return this.map.size();
    }

    @Override
    public Object writeReplace() {
        return new SerializedForm(this.map);
    }

    @Override
    public dgb iterator() {
        return new a();
    }
}
