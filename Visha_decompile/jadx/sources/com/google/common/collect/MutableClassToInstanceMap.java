package com.google.common.collect;

import defpackage.a54;
import defpackage.b54;
import defpackage.e54;
import defpackage.jf8;
import defpackage.xd8;
import defpackage.y6b;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class MutableClassToInstanceMap<B> extends a54 implements Map, Serializable {
    private final Map<Class<? extends B>, B> delegate;

    public static final class SerializedForm<B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Map<Class<? extends B>, B> backingMap;

        public SerializedForm(Map<Class<? extends B>, B> map) {
            this.backingMap = map;
        }

        public Object readResolve() {
            return MutableClassToInstanceMap.create(this.backingMap);
        }
    }

    public class a extends b54 {
        public final Map.Entry b;

        public a(Map.Entry entry) {
            this.b = entry;
        }

        @Override
        public Map.Entry f() {
            return this.b;
        }

        @Override
        public Object setValue(Object obj) {
            MutableClassToInstanceMap.cast((Class) getKey(), obj);
            return super.setValue(obj);
        }
    }

    public class b extends e54 {

        public class a extends y6b {
            public a(Iterator it) {
                super(it);
            }

            @Override
            public Map.Entry a(Map.Entry entry) {
                return MutableClassToInstanceMap.checkedEntry(entry);
            }
        }

        public b() {
        }

        @Override
        public Iterator iterator() {
            return new a(f().iterator());
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
        public Set f() {
            return MutableClassToInstanceMap.this.f().entrySet();
        }
    }

    private MutableClassToInstanceMap(Map<Class<? extends B>, B> map) {
        this.delegate = (Map) xd8.o(map);
    }

    public static <T> T cast(Class<T> cls, Object obj) {
        return (T) jf8.d(cls).cast(obj);
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
        return new SerializedForm(f());
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
    public <T extends B> T putInstance(Class<T> cls, T t) {
        return (T) cast(cls, put((Class<? extends T>) cls, t));
    }

    public static <B> MutableClassToInstanceMap<B> create(Map<Class<? extends B>, B> map) {
        return new MutableClassToInstanceMap<>(map);
    }

    @Override
    public Map<Class<? extends B>, B> f() {
        return this.delegate;
    }

    @Override
    public B put(Class<? extends B> cls, B b2) {
        cast(cls, b2);
        return (B) super.put((Object) cls, (Object) b2);
    }
}
