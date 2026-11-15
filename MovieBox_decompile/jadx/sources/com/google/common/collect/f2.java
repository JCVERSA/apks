package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

public abstract class f2 {

    static class a extends AbstractCollection {

        final Collection f29960a;

        final com.google.common.base.n f29961b;

        a(Collection collection, com.google.common.base.n nVar) {
            this.f29960a = collection;
            this.f29961b = nVar;
        }

        @Override
        public boolean add(Object obj) {
            com.google.common.base.m.d(this.f29961b.apply(obj));
            return this.f29960a.add(obj);
        }

        @Override
        public boolean addAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                com.google.common.base.m.d(this.f29961b.apply(it.next()));
            }
            return this.f29960a.addAll(collection);
        }

        @Override
        public void clear() {
            g3.l(this.f29960a, this.f29961b);
        }

        @Override
        public boolean contains(Object obj) {
            if (f2.c(this.f29960a, obj)) {
                return this.f29961b.apply(obj);
            }
            return false;
        }

        @Override
        public boolean containsAll(Collection collection) {
            return f2.a(this, collection);
        }

        @Override
        public boolean isEmpty() {
            return !g3.b(this.f29960a, this.f29961b);
        }

        @Override
        public Iterator iterator() {
            return Iterators.k(this.f29960a.iterator(), this.f29961b);
        }

        @Override
        public boolean remove(Object obj) {
            return contains(obj) && this.f29960a.remove(obj);
        }

        @Override
        public boolean removeAll(Collection collection) {
            Iterator it = this.f29960a.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f29961b.apply(next) && collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public boolean retainAll(Collection collection) {
            Iterator it = this.f29960a.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f29961b.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override
        public int size() {
            Iterator it = this.f29960a.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (this.f29961b.apply(it.next())) {
                    i10++;
                }
            }
            return i10;
        }

        @Override
        public Object[] toArray() {
            return Lists.k(iterator()).toArray();
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return Lists.k(iterator()).toArray(objArr);
        }
    }

    static boolean a(Collection collection, Collection collection2) {
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    static StringBuilder b(int i10) {
        e2.b(i10, "size");
        return new StringBuilder((int) Math.min(((long) i10) * 8, 1073741824L));
    }

    static boolean c(Collection collection, Object obj) {
        com.google.common.base.m.o(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static boolean d(Collection collection, Object obj) {
        com.google.common.base.m.o(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static String e(Collection collection) {
        StringBuilder sbB = b(collection.size());
        sbB.append('[');
        boolean z10 = true;
        for (Object obj : collection) {
            if (!z10) {
                sbB.append(", ");
            }
            if (obj == collection) {
                sbB.append("(this Collection)");
            } else {
                sbB.append(obj);
            }
            z10 = false;
        }
        sbB.append(']');
        return sbB.toString();
    }
}
