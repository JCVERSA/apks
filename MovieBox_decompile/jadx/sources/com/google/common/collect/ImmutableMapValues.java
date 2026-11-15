package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;

final class ImmutableMapValues<K, V> extends ImmutableCollection<V> {
    private final ImmutableMap<K, V> map;

    private static class SerializedForm<V> implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableMap<?, V> map;

        SerializedForm(ImmutableMap<?, V> immutableMap) {
            this.map = immutableMap;
        }

        Object readResolve() {
            return this.map.values();
        }
    }

    class a extends r4 {

        final r4 f29602a;

        a() {
            this.f29602a = ImmutableMapValues.this.map.entrySet().iterator();
        }

        @Override
        public boolean hasNext() {
            return this.f29602a.hasNext();
        }

        @Override
        public Object next() {
            return ((Map.Entry) this.f29602a.next()).getValue();
        }
    }

    ImmutableMapValues(ImmutableMap<K, V> immutableMap) {
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
            public V get(int i10) {
                return (V) ((Map.Entry) immutableListAsList.get(i10)).getValue();
            }

            @Override
            boolean isPartialView() {
                return true;
            }

            @Override
            public int size() {
                return immutableListAsList.size();
            }

            @Override
            Object writeReplace() {
                return super.writeReplace();
            }
        };
    }

    @Override
    public boolean contains(Object obj) {
        return obj != null && Iterators.f(iterator(), obj);
    }

    @Override
    boolean isPartialView() {
        return true;
    }

    @Override
    public int size() {
        return this.map.size();
    }

    @Override
    Object writeReplace() {
        return new SerializedForm(this.map);
    }

    @Override
    public r4 iterator() {
        return new a();
    }
}
