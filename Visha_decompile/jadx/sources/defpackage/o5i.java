package defpackage;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class o5i extends n5i implements SortedSet {
    public o5i(SortedSet sortedSet, w2i w2iVar) {
        super(sortedSet, w2iVar);
    }

    @Override
    public final Comparator comparator() {
        return ((SortedSet) this.b).comparator();
    }

    @Override
    public final Object first() {
        Iterator it = this.b.iterator();
        it.getClass();
        w2i w2iVar = this.c;
        w2iVar.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (w2iVar.zza(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return new o5i(((SortedSet) this.b).headSet(obj), this.c);
    }

    @Override
    public final Object last() {
        SortedSet sortedSetHeadSet = (SortedSet) this.b;
        while (true) {
            w2i w2iVar = this.c;
            Object objLast = sortedSetHeadSet.last();
            if (w2iVar.zza(objLast)) {
                return objLast;
            }
            sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
        }
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        return new o5i(((SortedSet) this.b).subSet(obj, obj2), this.c);
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return new o5i(((SortedSet) this.b).tailSet(obj), this.c);
    }
}
