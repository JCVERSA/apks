package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;

abstract class i2 extends p2 implements a4 {

    private transient Comparator f29984a;

    private transient NavigableSet f29985b;

    private transient Set f29986c;

    class a extends Multisets.d {
        a() {
        }

        @Override
        l3 a() {
            return i2.this;
        }

        @Override
        public Iterator iterator() {
            return i2.this.n();
        }

        @Override
        public int size() {
            return i2.this.o().entrySet().size();
        }
    }

    i2() {
    }

    @Override
    public Comparator comparator() {
        Comparator comparator = this.f29984a;
        if (comparator != null) {
            return comparator;
        }
        Ordering orderingReverse = Ordering.from(o().comparator()).reverse();
        this.f29984a = orderingReverse;
        return orderingReverse;
    }

    @Override
    public a4 descendingMultiset() {
        return o();
    }

    @Override
    public Set entrySet() {
        Set set = this.f29986c;
        if (set != null) {
            return set;
        }
        Set setM = m();
        this.f29986c = setM;
        return setM;
    }

    @Override
    public l3.a firstEntry() {
        return o().lastEntry();
    }

    @Override
    public a4 headMultiset(Object obj, BoundType boundType) {
        return o().tailMultiset(obj, boundType).descendingMultiset();
    }

    @Override
    public l3 l() {
        return o();
    }

    @Override
    public l3.a lastEntry() {
        return o().firstEntry();
    }

    Set m() {
        return new a();
    }

    abstract Iterator n();

    abstract a4 o();

    @Override
    public l3.a pollFirstEntry() {
        return o().pollLastEntry();
    }

    @Override
    public l3.a pollLastEntry() {
        return o().pollFirstEntry();
    }

    @Override
    public a4 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return o().subMultiset(obj2, boundType2, obj, boundType).descendingMultiset();
    }

    @Override
    public a4 tailMultiset(Object obj, BoundType boundType) {
        return o().headMultiset(obj, boundType).descendingMultiset();
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
        NavigableSet navigableSet = this.f29985b;
        if (navigableSet != null) {
            return navigableSet;
        }
        b4.b bVar = new b4.b(this);
        this.f29985b = bVar;
        return bVar;
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        return standardToArray(objArr);
    }
}
