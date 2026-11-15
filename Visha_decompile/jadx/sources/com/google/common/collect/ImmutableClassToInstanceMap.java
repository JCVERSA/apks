package com.google.common.collect;

import defpackage.a54;
import defpackage.jf8;
import defpackage.xd8;
import java.io.Serializable;
import java.util.Map;

public final class ImmutableClassToInstanceMap<B> extends a54 implements Map, Serializable {
    private static final ImmutableClassToInstanceMap<Object> EMPTY = new ImmutableClassToInstanceMap<>(ImmutableMap.of());
    private final ImmutableMap<Class<? extends B>, B> delegate;

    public static final class b {
        public final ImmutableMap.b a = ImmutableMap.builder();

        public static Object b(Class cls, Object obj) {
            return jf8.d(cls).cast(obj);
        }

        public ImmutableClassToInstanceMap a() {
            ImmutableMap immutableMapD = this.a.d();
            return immutableMapD.isEmpty() ? ImmutableClassToInstanceMap.of() : new ImmutableClassToInstanceMap(immutableMapD);
        }

        public b c(Map map) {
            for (Map.Entry entry : map.entrySet()) {
                Class cls = (Class) entry.getKey();
                this.a.h(cls, b(cls, entry.getValue()));
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
        return this.delegate.get(xd8.o(cls));
    }

    @Deprecated
    public <T extends B> T putInstance(Class<T> cls, T t) {
        throw new UnsupportedOperationException();
    }

    public Object readResolve() {
        return isEmpty() ? of() : this;
    }

    private ImmutableClassToInstanceMap(ImmutableMap<Class<? extends B>, B> immutableMap) {
        this.delegate = immutableMap;
    }

    public static <B, T extends B> ImmutableClassToInstanceMap<B> of(Class<T> cls, T t) {
        return new ImmutableClassToInstanceMap<>(ImmutableMap.of(cls, t));
    }

    @Override
    public Map<Class<? extends B>, B> f() {
        return this.delegate;
    }
}
