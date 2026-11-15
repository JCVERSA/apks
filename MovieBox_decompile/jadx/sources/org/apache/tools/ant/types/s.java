package org.apache.tools.ant.types;

import java.util.Iterator;
import java.util.NoSuchElementException;

class s implements Iterator {

    private boolean f68370a = false;

    private final t f68371b;

    s(t tVar) {
        this.f68371b = tVar;
    }

    @Override
    public boolean hasNext() {
        return !this.f68370a;
    }

    @Override
    public Object next() {
        if (this.f68370a) {
            throw new NoSuchElementException();
        }
        this.f68370a = true;
        return this.f68371b;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
