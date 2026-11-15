package defpackage;

import java.util.Iterator;

public final class cji implements Iterator {
    public final Iterator b;
    public final Iterator c;

    public cji(Iterator it, Iterator it2, dji djiVar) {
        this.b = it;
        this.c = it2;
    }

    @Override
    public final boolean hasNext() {
        return this.b.hasNext() || this.c.hasNext();
    }

    @Override
    public final Object next() {
        Iterator it = this.b;
        return it.hasNext() ? it.next() : this.c.next();
    }
}
