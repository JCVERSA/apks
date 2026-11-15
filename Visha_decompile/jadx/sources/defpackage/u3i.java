package defpackage;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public abstract class u3i extends AbstractCollection {
    public final Collection b;
    public final w2i c;

    public u3i(Collection collection, w2i w2iVar) {
        this.b = collection;
        this.c = w2iVar;
    }

    @Override
    public final boolean add(Object obj) {
        v2i.e(this.c.zza(obj));
        return this.b.add(obj);
    }

    @Override
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            v2i.e(this.c.zza(it.next()));
        }
        return this.b.addAll(collection);
    }

    @Override
    public final void clear() {
        q4i.b(this.b, this.c);
    }

    @Override
    public final boolean contains(Object obj) {
        if (v3i.a(this.b, obj)) {
            return this.c.zza(obj);
        }
        return false;
    }

    @Override
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final boolean isEmpty() {
        w2i w2iVar = this.c;
        Iterator it = this.b.iterator();
        v2i.c(w2iVar, "predicate");
        int i = 0;
        while (it.hasNext()) {
            if (w2iVar.zza(it.next())) {
                return i == -1;
            }
            i++;
        }
        return true;
    }

    @Override
    public final Iterator iterator() {
        Iterator it = this.b.iterator();
        it.getClass();
        w2i w2iVar = this.c;
        w2iVar.getClass();
        return new r4i(it, w2iVar);
    }

    @Override
    public final boolean remove(Object obj) {
        return contains(obj) && this.b.remove(obj);
    }

    @Override
    public final boolean removeAll(Collection collection) {
        Iterator it = this.b.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.c.zza(next) && collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override
    public final boolean retainAll(Collection collection) {
        Iterator it = this.b.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.c.zza(next) && !collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override
    public final int size() {
        Iterator it = this.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.c.zza(it.next())) {
                i++;
            }
        }
        return i;
    }

    @Override
    public final Object[] toArray() {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        t4i.c(arrayList, it);
        return arrayList.toArray();
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        t4i.c(arrayList, it);
        return arrayList.toArray(objArr);
    }
}
