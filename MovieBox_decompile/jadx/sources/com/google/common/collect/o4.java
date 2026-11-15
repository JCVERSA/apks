package com.google.common.collect;

import java.util.Iterator;

abstract class o4 implements Iterator {

    final Iterator f30018a;

    o4(Iterator it) {
        this.f30018a = (Iterator) com.google.common.base.m.o(it);
    }

    abstract Object a(Object obj);

    @Override
    public final boolean hasNext() {
        return this.f30018a.hasNext();
    }

    @Override
    public final Object next() {
        return a(this.f30018a.next());
    }

    @Override
    public final void remove() {
        this.f30018a.remove();
    }
}
