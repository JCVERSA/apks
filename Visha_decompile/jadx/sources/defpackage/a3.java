package defpackage;

import java.util.NoSuchElementException;

public abstract class a3 extends fgb {
    public final int b;
    public int c;

    public a3(int i) {
        this(i, 0);
    }

    public abstract Object a(int i);

    @Override
    public final boolean hasNext() {
        return this.c < this.b;
    }

    @Override
    public final boolean hasPrevious() {
        return this.c > 0;
    }

    @Override
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.c;
        this.c = i + 1;
        return a(i);
    }

    @Override
    public final int nextIndex() {
        return this.c;
    }

    @Override
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.c - 1;
        this.c = i;
        return a(i);
    }

    @Override
    public final int previousIndex() {
        return this.c - 1;
    }

    public a3(int i, int i2) {
        xd8.r(i2, i);
        this.b = i;
        this.c = i2;
    }
}
