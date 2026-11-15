package defpackage;

import java.util.Iterator;

public final class oz4 implements Iterator, qe5 {
    public final Iterator b;
    public int c;

    public oz4(Iterator it) {
        y45.j(it, "iterator");
        this.b = it;
    }

    @Override
    public final mz4 next() {
        int i = this.c;
        this.c = i + 1;
        if (i < 0) {
            y71.u();
        }
        return new mz4(i, this.b.next());
    }

    @Override
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
