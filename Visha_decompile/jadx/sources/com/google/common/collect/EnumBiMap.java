package com.google.common.collect;

import defpackage.ce0;
import defpackage.xd8;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class EnumBiMap<K extends Enum<K>, V extends Enum<V>> extends AbstractBiMap<K, V> {
    private static final long serialVersionUID = 0;
    transient Class<K> keyTypeOrObjectUnderJ2cl;
    transient Class<V> valueTypeOrObjectUnderJ2cl;

    private EnumBiMap(Class<K> cls, Class<V> cls2) {
        super(new EnumMap(cls), new EnumMap(cls2));
        this.keyTypeOrObjectUnderJ2cl = cls;
        this.valueTypeOrObjectUnderJ2cl = cls2;
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Class<K> cls, Class<V> cls2) {
        return new EnumBiMap<>(cls, cls2);
    }

    public static <K extends Enum<K>> Class<K> inferKeyTypeOrObjectUnderJ2cl(Map<K, ?> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).keyTypeOrObjectUnderJ2cl;
        }
        if (map instanceof EnumHashBiMap) {
            return ((EnumHashBiMap) map).keyTypeOrObjectUnderJ2cl;
        }
        xd8.d(!map.isEmpty());
        return l.b(map.keySet().iterator().next());
    }

    private static <V extends Enum<V>> Class<V> inferValueTypeOrObjectUnderJ2cl(Map<?, V> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).valueTypeOrObjectUnderJ2cl;
        }
        xd8.d(!map.isEmpty());
        return l.b(map.values().iterator().next());
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        this.keyTypeOrObjectUnderJ2cl = (Class) object;
        Object object2 = objectInputStream.readObject();
        Objects.requireNonNull(object2);
        this.valueTypeOrObjectUnderJ2cl = (Class) object2;
        setDelegates(new EnumMap(this.keyTypeOrObjectUnderJ2cl), new EnumMap(this.valueTypeOrObjectUnderJ2cl));
        n.b(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.keyTypeOrObjectUnderJ2cl);
        objectOutputStream.writeObject(this.valueTypeOrObjectUnderJ2cl);
        n.i(this, objectOutputStream);
    }

    @Override
    public void clear() {
        super.clear();
    }

    @Override
    public boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override
    public Set entrySet() {
        return super.entrySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object forcePut(Object obj, Object obj2) {
        return super.forcePut(obj, obj2);
    }

    @Override
    public ce0 inverse() {
        return super.inverse();
    }

    @Override
    public Set keySet() {
        return super.keySet();
    }

    public Class<K> keyType() {
        return this.keyTypeOrObjectUnderJ2cl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override
    public void putAll(Map map) {
        super.putAll(map);
    }

    @Override
    public Object remove(Object obj) {
        return super.remove(obj);
    }

    public Class<V> valueType() {
        return this.valueTypeOrObjectUnderJ2cl;
    }

    @Override
    public Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Map<K, V> map) {
        EnumBiMap<K, V> enumBiMapCreate = create(inferKeyTypeOrObjectUnderJ2cl(map), inferValueTypeOrObjectUnderJ2cl(map));
        enumBiMapCreate.putAll(map);
        return enumBiMapCreate;
    }

    @Override
    public K checkKey(K k) {
        return (K) xd8.o(k);
    }

    @Override
    public V checkValue(V v) {
        return (V) xd8.o(v);
    }
}
