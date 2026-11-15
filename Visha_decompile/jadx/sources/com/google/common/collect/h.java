package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

public abstract class h extends i implements p {
    public transient Comparator b;
    public transient NavigableSet c;
    public transient Set d;

    public class a extends Multisets.d {
        public a() {
        }

        @Override
        public j b() {
            return h.this;
        }

        @Override
        public Iterator iterator() {
            return h.this.l();
        }

        @Override
        public int size() {
            return h.this.m().entrySet().size();
        }
    }

    @Override
    public Comparator comparator() {
        Comparator comparator = this.b;
        if (comparator != null) {
            return comparator;
        }
        Ordering orderingReverse = Ordering.from(m().comparator()).reverse();
        this.b = orderingReverse;
        return orderingReverse;
    }

    @Override
    public p descendingMultiset() {
        return m();
    }

    @Override
    public Set entrySet() {
        Set set = this.d;
        if (set != null) {
            return set;
        }
        Set setK = k();
        this.d = setK;
        return setK;
    }

    @Override
    public j f() {
        return m();
    }

    @Override
    public j.a firstEntry() {
        return m().lastEntry();
    }

    @Override
    public p headMultiset(Object obj, BoundType boundType) {
        return m().tailMultiset(obj, boundType).descendingMultiset();
    }

    public Set k() {
        return new a();
    }

    public abstract Iterator l();

    @Override
    public j.a lastEntry() {
        return m().firstEntry();
    }

    public abstract p m();

    @Override
    public j.a pollFirstEntry() {
        return m().pollLastEntry();
    }

    @Override
    public j.a pollLastEntry() {
        return m().pollFirstEntry();
    }

    @Override
    public p subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return m().subMultiset(obj2, boundType2, obj, boundType).descendingMultiset();
    }

    @Override
    public p tailMultiset(Object obj, BoundType boundType) {
        return m().headMultiset(obj, boundType).descendingMultiset();
    }

    @Override
    public Object[] toArray() {
        return standardToArray();
    }

    @Override
    public String toString() {
        return entrySet().toString();
    }

    @Override
    public NavigableSet elementSet() {
        NavigableSet navigableSet = this.c;
        if (navigableSet != null) {
            return navigableSet;
        }
        q.b bVar = new q.b(this);
        this.c = bVar;
        return bVar;
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        return standardToArray(objArr);
    }
}
