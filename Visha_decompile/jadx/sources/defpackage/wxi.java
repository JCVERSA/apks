package defpackage;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public final class wxi extends AbstractList {
    public static final xxi d = xxi.b(wxi.class);
    public final List b;
    public final Iterator c;

    public wxi(List list, Iterator it) {
        this.b = list;
        this.c = it;
    }

    @Override
    public final Object get(int i) {
        List list = this.b;
        if (list.size() > i) {
            return list.get(i);
        }
        Iterator it = this.c;
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        list.add(it.next());
        return get(i);
    }

    @Override
    public final Iterator iterator() {
        return new vxi(this);
    }

    @Override
    public final int size() {
        xxi xxiVar = d;
        xxiVar.a("potentially expensive size() call");
        xxiVar.a("blowup running");
        while (true) {
            Iterator it = this.c;
            if (!it.hasNext()) {
                return this.b.size();
            }
            this.b.add(it.next());
        }
    }
}
