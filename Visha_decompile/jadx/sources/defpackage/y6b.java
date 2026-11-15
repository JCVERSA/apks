package defpackage;

import java.util.Iterator;

public abstract class y6b implements Iterator {
    public final Iterator b;

    public y6b(Iterator it) {
        this.b = (Iterator) xd8.o(it);
    }

    public abstract Object a(Object obj);

    @Override
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override
    public final Object next() {
        return a(this.b.next());
    }

    @Override
    public final void remove() {
        this.b.remove();
    }
}
