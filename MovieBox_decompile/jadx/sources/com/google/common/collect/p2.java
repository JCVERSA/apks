package com.google.common.collect;

import java.util.Collection;
import java.util.Set;

public abstract class p2 extends k2 implements l3 {
    protected p2() {
    }

    @Override
    public int add(Object obj, int i10) {
        return l().add(obj, i10);
    }

    @Override
    public int count(Object obj) {
        return l().count(obj);
    }

    public abstract Set entrySet();

    @Override
    public boolean equals(Object obj) {
        return obj == this || l().equals(obj);
    }

    @Override
    public int hashCode() {
        return l().hashCode();
    }

    protected abstract l3 l();

    @Override
    public int remove(Object obj, int i10) {
        return l().remove(obj, i10);
    }

    @Override
    public int setCount(Object obj, int i10) {
        return l().setCount(obj, i10);
    }

    @Override
    protected boolean standardAddAll(Collection collection) {
        return Multisets.c(this, collection);
    }

    @Override
    protected void standardClear() {
        Iterators.d(entrySet().iterator());
    }

    @Override
    protected boolean standardContains(Object obj) {
        return count(obj) > 0;
    }

    @Override
    protected boolean standardRemove(Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override
    protected boolean standardRemoveAll(Collection collection) {
        return Multisets.j(this, collection);
    }

    @Override
    protected boolean standardRetainAll(Collection collection) {
        return Multisets.k(this, collection);
    }

    @Override
    protected String standardToString() {
        return entrySet().toString();
    }

    @Override
    public boolean setCount(Object obj, int i10, int i11) {
        return l().setCount(obj, i10, i11);
    }
}
