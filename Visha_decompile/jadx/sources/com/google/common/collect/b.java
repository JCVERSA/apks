package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public abstract class b extends AbstractCollection implements j {
    private transient Set<Object> elementSet;
    private transient Set<j.a> entrySet;

    public class a extends Multisets.c {
        public a() {
        }

        @Override
        public j b() {
            return b.this;
        }

        @Override
        public Iterator iterator() {
            return b.this.elementIterator();
        }
    }

    public class C0105b extends Multisets.d {
        public C0105b() {
        }

        @Override
        public j b() {
            return b.this;
        }

        @Override
        public Iterator iterator() {
            return b.this.entryIterator();
        }

        @Override
        public int size() {
            return b.this.distinctElements();
        }
    }

    @Override
    public final boolean add(Object obj) {
        add(obj, 1);
        return true;
    }

    @Override
    public final boolean addAll(Collection<Object> collection) {
        return Multisets.c(this, collection);
    }

    @Override
    public boolean contains(Object obj) {
        return count(obj) > 0;
    }

    public Set<Object> createElementSet() {
        return new a();
    }

    public Set<j.a> createEntrySet() {
        return new C0105b();
    }

    public abstract int distinctElements();

    public abstract Iterator elementIterator();

    public Set<Object> elementSet() {
        Set<Object> set = this.elementSet;
        if (set != null) {
            return set;
        }
        Set<Object> setCreateElementSet = createElementSet();
        this.elementSet = setCreateElementSet;
        return setCreateElementSet;
    }

    public abstract Iterator entryIterator();

    public Set<j.a> entrySet() {
        Set<j.a> set = this.entrySet;
        if (set != null) {
            return set;
        }
        Set<j.a> setCreateEntrySet = createEntrySet();
        this.entrySet = setCreateEntrySet;
        return setCreateEntrySet;
    }

    @Override
    public final boolean equals(Object obj) {
        return Multisets.f(this, obj);
    }

    @Override
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    public abstract int remove(Object obj, int i);

    @Override
    public final boolean remove(Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override
    public final boolean removeAll(Collection<?> collection) {
        return Multisets.j(this, collection);
    }

    @Override
    public final boolean retainAll(Collection<?> collection) {
        return Multisets.k(this, collection);
    }

    public int setCount(Object obj, int i) {
        return Multisets.l(this, obj, i);
    }

    @Override
    public final String toString() {
        return entrySet().toString();
    }

    public int add(Object obj, int i) {
        throw new UnsupportedOperationException();
    }

    public boolean setCount(Object obj, int i, int i2) {
        return Multisets.m(this, obj, i, i2);
    }
}
