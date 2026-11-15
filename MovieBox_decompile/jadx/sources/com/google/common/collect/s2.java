package com.google.common.collect;

import java.util.Collection;
import java.util.Set;

public abstract class s2 extends k2 implements Set {
    protected s2() {
    }

    @Override
    protected abstract Set l();

    @Override
    public boolean equals(Object obj) {
        return obj == this || l().equals(obj);
    }

    @Override
    public int hashCode() {
        return l().hashCode();
    }

    protected boolean standardEquals(Object obj) {
        return Sets.a(this, obj);
    }

    protected int standardHashCode() {
        return Sets.d(this);
    }

    @Override
    protected boolean standardRemoveAll(Collection<?> collection) {
        return Sets.i(this, (Collection) com.google.common.base.m.o(collection));
    }
}
