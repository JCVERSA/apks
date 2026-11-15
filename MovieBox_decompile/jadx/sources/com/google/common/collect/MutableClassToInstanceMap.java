package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class MutableClassToInstanceMap<B> extends n2 implements Map, Serializable {
    private final Map<Class<? extends B>, B> delegate;

    private static final class SerializedForm<B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Map<Class<? extends B>, B> backingMap;

        SerializedForm(Map<Class<? extends B>, B> map) {
            this.backingMap = map;
        }

        Object readResolve() {
            return MutableClassToInstanceMap.create(this.backingMap);
        }
    }

    class a extends o2 {

        final Map.Entry f29795a;

        a(Map.Entry entry) {
            this.f29795a = entry;
        }

        @Override
        public Map.Entry l() {
            return this.f29795a;
        }

        @Override
        public Object setValue(Object obj) {
            MutableClassToInstanceMap.cast((Class) getKey(), obj);
            return super.setValue(obj);
        }
    }

    class b extends s2 {

        class a extends o4 {
            a(Iterator it) {
                super(it);
            }

            @Override
            public Map.Entry a(Map.Entry entry) {
                return MutableClassToInstanceMap.checkedEntry(entry);
            }
        }

        b() {
        }

        @Override
        public Iterator iterator() {
            return new a(l().iterator());
        }

        @Override
        public Object[] toArray() {
            return standardToArray();
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return standardToArray(objArr);
        }

        @Override
        public Set l() {
            return MutableClassToInstanceMap.this.l().entrySet();
        }
    }

    private MutableClassToInstanceMap(Map<Class<? extends B>, B> map) {
        this.delegate = (Map) com.google.common.base.m.o(map);
    }

    public static <T> T cast(Class<T> cls, Object obj) {
        return (T) com.google.common.primitives.e.d(cls).cast(obj);
    }

    public static <B> Map.Entry<Class<? extends B>, B> checkedEntry(Map.Entry<Class<? extends B>, B> entry) {
        return new a(entry);
    }

    public static <B> MutableClassToInstanceMap<B> create() {
        return new MutableClassToInstanceMap<>(new HashMap());
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    private Object writeReplace() {
        return new SerializedForm(l());
    }

    @Override
    public Set<Map.Entry<Class<? extends B>, B>> entrySet() {
        return new b();
    }

    public <T extends B> T getInstance(Class<T> cls) {
        return (T) cast(cls, get(cls));
    }

    @Override
    public void putAll(Map<? extends Class<? extends B>, ? extends B> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry<Object, Object> entry : linkedHashMap.entrySet()) {
            cast((Class) entry.getKey(), entry.getValue());
        }
        super.putAll(linkedHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends B> T putInstance(Class<T> cls, T t10) {
        return (T) cast(cls, put((Class<? extends T>) cls, t10));
    }

    public static <B> MutableClassToInstanceMap<B> create(Map<Class<? extends B>, B> map) {
        return new MutableClassToInstanceMap<>(map);
    }

    @Override
    public Map<Class<? extends B>, B> l() {
        return this.delegate;
    }

    @Override
    public B put(Class<? extends B> cls, B b10) {
        cast(cls, b10);
        return (B) super.put((Object) cls, (Object) b10);
    }
}
