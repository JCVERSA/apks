package com.bumptech.glide.util;

import androidx.collection.a;
import androidx.collection.x0;

public final class CachedHashCodeArrayMap<K, V> extends a {
    private int hashCode;

    @Override
    public void clear() {
        this.hashCode = 0;
        super.clear();
    }

    @Override
    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = super.hashCode();
        }
        return this.hashCode;
    }

    @Override
    public V put(K k10, V v10) {
        this.hashCode = 0;
        return (V) super.put(k10, v10);
    }

    @Override
    public void putAll(x0 x0Var) {
        this.hashCode = 0;
        super.putAll(x0Var);
    }

    @Override
    public V removeAt(int i10) {
        this.hashCode = 0;
        return (V) super.removeAt(i10);
    }

    @Override
    public V setValueAt(int i10, V v10) {
        this.hashCode = 0;
        return (V) super.setValueAt(i10, v10);
    }
}
