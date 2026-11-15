package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

public abstract class b3 implements Iterator, qe5 {
    public int b;
    public Object c;

    public abstract void b();

    public final void c() {
        this.b = 2;
    }

    public final void d(Object obj) {
        this.c = obj;
        this.b = 1;
    }

    public final boolean e() {
        this.b = 3;
        b();
        return this.b == 1;
    }

    @Override
    public boolean hasNext() {
        int i = this.b;
        if (i == 0) {
            return e();
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        throw new IllegalArgumentException("hasNext called when the iterator is in the FAILED state.");
    }

    @Override
    public Object next() {
        int i = this.b;
        if (i == 1) {
            this.b = 0;
            return this.c;
        }
        if (i == 2 || !e()) {
            throw new NoSuchElementException();
        }
        this.b = 0;
        return this.c;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
