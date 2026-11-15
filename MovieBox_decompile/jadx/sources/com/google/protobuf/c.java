package com.google.protobuf;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

abstract class c extends AbstractList implements y.j {
    protected static final int DEFAULT_CAPACITY = 10;
    private boolean isMutable;

    c() {
        this(true);
    }

    @Override
    public boolean add(Object obj) {
        ensureIsMutable();
        return super.add(obj);
    }

    @Override
    public boolean addAll(Collection<Object> collection) {
        ensureIsMutable();
        return super.addAll(collection);
    }

    @Override
    public void clear() {
        ensureIsMutable();
        super.clear();
    }

    protected void ensureIsMutable() {
        if (!this.isMutable) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            if (!get(i10).equals(list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i10 = 0; i10 < size; i10++) {
            iHashCode = (iHashCode * 31) + get(i10).hashCode();
        }
        return iHashCode;
    }

    @Override
    public boolean isModifiable() {
        return this.isMutable;
    }

    @Override
    public final void makeImmutable() {
        if (this.isMutable) {
            this.isMutable = false;
        }
    }

    @Override
    public abstract y.j mutableCopyWithCapacity(int i10);

    @Override
    public Object remove(int i10) {
        ensureIsMutable();
        return super.remove(i10);
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        ensureIsMutable();
        return super.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection<?> collection) {
        ensureIsMutable();
        return super.retainAll(collection);
    }

    @Override
    public Object set(int i10, Object obj) {
        ensureIsMutable();
        return super.set(i10, obj);
    }

    c(boolean z10) {
        this.isMutable = z10;
    }

    @Override
    public void add(int i10, Object obj) {
        ensureIsMutable();
        super.add(i10, obj);
    }

    @Override
    public boolean addAll(int i10, Collection<Object> collection) {
        ensureIsMutable();
        return super.addAll(i10, collection);
    }

    @Override
    public boolean remove(Object obj) {
        ensureIsMutable();
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }
}
