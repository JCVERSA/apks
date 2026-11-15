package defpackage;

import java.util.Iterator;
import java.util.List;

public final class aji implements Iterable {
    public final List b;
    public final List c;

    public aji(eji ejiVar, List list, List list2) {
        this.b = list;
        this.c = list2;
    }

    @Override
    public final Iterator iterator() {
        return new cji(this.b.iterator(), this.c.iterator(), null);
    }
}
