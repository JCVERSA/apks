package defpackage;

import java.util.NoSuchElementException;

public final class blf extends xvf {
    public final Object b;
    public boolean c;

    public blf(Object obj) {
        this.b = obj;
    }

    @Override
    public final boolean hasNext() {
        return !this.c;
    }

    @Override
    public final Object next() {
        if (this.c) {
            throw new NoSuchElementException();
        }
        this.c = true;
        return this.b;
    }
}
