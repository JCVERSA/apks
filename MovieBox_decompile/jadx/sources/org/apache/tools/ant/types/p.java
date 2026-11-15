package org.apache.tools.ant.types;

import java.util.Enumeration;
import java.util.Iterator;

class p implements Iterator {

    private final Enumeration f68353a;

    private final q f68354b;

    p(q qVar, Enumeration enumeration) {
        this.f68354b = qVar;
        this.f68353a = enumeration;
    }

    @Override
    public boolean hasNext() {
        return this.f68353a.hasMoreElements();
    }

    @Override
    public Object next() {
        return new mz.f(this.f68354b.getProject(), (String) this.f68353a.nextElement());
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
