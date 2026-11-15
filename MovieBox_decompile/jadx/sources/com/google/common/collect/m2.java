package com.google.common.collect;

import java.util.Iterator;

public abstract class m2 extends q2 implements Iterator {
    protected m2() {
    }

    @Override
    public boolean hasNext() {
        return l().hasNext();
    }

    protected abstract Iterator l();

    public Object next() {
        return l().next();
    }
}
