package com.google.common.collect;

import defpackage.u44;
import java.util.Collection;
import java.util.Set;

public abstract class i extends u44 implements j {
    @Override
    public int add(Object obj, int i) {
        return f().add(obj, i);
    }

    @Override
    public int count(Object obj) {
        return f().count(obj);
    }

    public abstract Set entrySet();

    @Override
    public boolean equals(Object obj) {
        return obj == this || f().equals(obj);
    }

    public abstract j f();

    @Override
    public int hashCode() {
        return f().hashCode();
    }

    @Override
    public int remove(Object obj, int i) {
        return f().remove(obj, i);
    }

    @Override
    public int setCount(Object obj, int i) {
        return f().setCount(obj, i);
    }

    @Override
    public boolean standardAddAll(Collection collection) {
        return Multisets.c(this, collection);
    }

    @Override
    public void standardClear() {
        Iterators.d(entrySet().iterator());
    }

    @Override
    public boolean standardContains(Object obj) {
        return count(obj) > 0;
    }

    @Override
    public boolean standardRemove(Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override
    public boolean standardRemoveAll(Collection collection) {
        return Multisets.j(this, collection);
    }

    @Override
    public boolean standardRetainAll(Collection collection) {
        return Multisets.k(this, collection);
    }

    @Override
    public String standardToString() {
        return entrySet().toString();
    }

    @Override
    public boolean setCount(Object obj, int i, int i2) {
        return f().setCount(obj, i, i2);
    }
}
