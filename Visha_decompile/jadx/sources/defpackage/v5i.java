package defpackage;

import java.util.Iterator;

public abstract class v5i implements Iterator {
    public final Iterator b;

    public v5i(Iterator it) {
        it.getClass();
        this.b = it;
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
