package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

public final class EnumHashBiMap<K extends Enum<K>, V> extends AbstractBiMap<K, V> {
    private static final long serialVersionUID = 0;
    transient Class<K> keyTypeOrObjectUnderJ2cl;

    private EnumHashBiMap(Class<K> cls) {
        super(new EnumMap(cls), new HashMap());
        this.keyTypeOrObjectUnderJ2cl = cls;
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Class<K> cls) {
        return new EnumHashBiMap<>(cls);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        this.keyTypeOrObjectUnderJ2cl = (Class) object;
        setDelegates(new EnumMap(this.keyTypeOrObjectUnderJ2cl), new HashMap());
        w3.b(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.keyTypeOrObjectUnderJ2cl);
        w3.i(this, objectOutputStream);
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

    @Override
    public k inverse() {
        return super.inverse();
    }

    @Override
    public Set keySet() {
        return super.keySet();
    }

    public Class<K> keyType() {
        return this.keyTypeOrObjectUnderJ2cl;
    }

    @Override
    public void putAll(Map map) {
        super.putAll(map);
    }

    @Override
    public Object remove(Object obj) {
        return super.remove(obj);
    }

    @Override
    public Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Map<K, ? extends V> map) {
        EnumHashBiMap<K, V> enumHashBiMapCreate = create(EnumBiMap.inferKeyTypeOrObjectUnderJ2cl(map));
        enumHashBiMapCreate.putAll(map);
        return enumHashBiMapCreate;
    }

    @Override
    public K checkKey(K k10) {
        return (K) com.google.common.base.m.o(k10);
    }

    @Override
    public V forcePut(K k10, V v10) {
        return (V) super.forcePut(k10, (Object) v10);
    }

    @Override
    public V put(K k10, V v10) {
        return (V) super.put(k10, (Object) v10);
    }
}
