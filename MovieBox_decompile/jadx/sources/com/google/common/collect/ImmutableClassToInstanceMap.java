package com.google.common.collect;

import java.io.Serializable;
import java.util.Map;

public final class ImmutableClassToInstanceMap<B> extends n2 implements Map, Serializable {
    private static final ImmutableClassToInstanceMap<Object> EMPTY = new ImmutableClassToInstanceMap<>(ImmutableMap.of());
    private final ImmutableMap<Class<? extends B>, B> delegate;

    public static final class b {

        private final ImmutableMap.b f29582a = ImmutableMap.builder();

        private static Object b(Class cls, Object obj) {
            return com.google.common.primitives.e.d(cls).cast(obj);
        }

        public ImmutableClassToInstanceMap a() {
            ImmutableMap immutableMapD = this.f29582a.d();
            return immutableMapD.isEmpty() ? ImmutableClassToInstanceMap.of() : new ImmutableClassToInstanceMap(immutableMapD);
        }

        public b c(Map map) {
            for (Map.Entry entry : map.entrySet()) {
                Class cls = (Class) entry.getKey();
                this.f29582a.h(cls, b(cls, entry.getValue()));
            }
            return this;
        }
    }

    public static <B> b builder() {
        return new b();
    }

    public static <B, S extends B> ImmutableClassToInstanceMap<B> copyOf(Map<? extends Class<? extends S>, ? extends S> map) {
        return map instanceof ImmutableClassToInstanceMap ? (ImmutableClassToInstanceMap) map : new b().c(map).a();
    }

    public static <B> ImmutableClassToInstanceMap<B> of() {
        return (ImmutableClassToInstanceMap<B>) EMPTY;
    }

    public <T extends B> T getInstance(Class<T> cls) {
        return this.delegate.get(com.google.common.base.m.o(cls));
    }

    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t10) {
        throw new UnsupportedOperationException();
    }

    Object readResolve() {
        return isEmpty() ? of() : this;
    }

    private ImmutableClassToInstanceMap(ImmutableMap<Class<? extends B>, B> immutableMap) {
        this.delegate = immutableMap;
    }

    public static <B, T extends B> ImmutableClassToInstanceMap<B> of(Class<T> cls, T t10) {
        return new ImmutableClassToInstanceMap<>(ImmutableMap.of(cls, t10));
    }

    @Override
    public Map<Class<? extends B>, B> l() {
        return this.delegate;
    }
}
