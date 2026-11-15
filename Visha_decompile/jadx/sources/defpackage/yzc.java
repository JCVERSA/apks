package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class yzc implements Iterator {
    public final Object[] b;
    public int c = 0;

    public yzc(Object[] objArr) {
        this.b = objArr;
    }

    @Override
    public boolean hasNext() {
        return this.c < this.b.length;
    }

    @Override
    public Object next() {
        int i = this.c;
        Object[] objArr = this.b;
        if (i >= objArr.length) {
            throw new NoSuchElementException();
        }
        this.c = i + 1;
        return objArr[i];
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
