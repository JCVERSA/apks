package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

public final class wg implements Iterator, qe5 {
    public final Object[] b;
    public int c;

    public wg(Object[] objArr) {
        y45.j(objArr, "array");
        this.b = objArr;
    }

    @Override
    public boolean hasNext() {
        return this.c < this.b.length;
    }

    @Override
    public Object next() {
        try {
            Object[] objArr = this.b;
            int i = this.c;
            this.c = i + 1;
            return objArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.c--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
