package com.google.common.collect;

import java.util.ListIterator;

abstract class p4 extends o4 implements ListIterator {
    p4(ListIterator listIterator) {
        super(listIterator);
    }

    private ListIterator b() {
        return (ListIterator) this.f30018a;
    }

    @Override
    public void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean hasPrevious() {
        return b().hasPrevious();
    }

    @Override
    public final int nextIndex() {
        return b().nextIndex();
    }

    @Override
    public final Object previous() {
        return a(b().previous());
    }

    @Override
    public final int previousIndex() {
        return b().previousIndex();
    }

    public void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
