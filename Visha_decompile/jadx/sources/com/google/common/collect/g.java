package com.google.common.collect;

import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.he8;
import defpackage.k71;
import defpackage.v55;
import defpackage.xd8;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

public abstract class g {

    public static class a extends AbstractCollection {
        public final Collection b;
        public final he8 c;

        public a(Collection collection, he8 he8Var) {
            this.b = collection;
            this.c = he8Var;
        }

        @Override
        public boolean add(Object obj) {
            xd8.d(this.c.apply(obj));
            return this.b.add(obj);
        }

        @Override
        public boolean addAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                xd8.d(this.c.apply(it.next()));
            }
            return this.b.addAll(collection);
        }

        @Override
        public void clear() {
            v55.l(this.b, this.c);
        }

        @Override
        public boolean contains(Object obj) {
            if (g.c(this.b, obj)) {
                return this.c.apply(obj);
            }
            return false;
        }

        @Override
        public boolean containsAll(Collection collection) {
            return g.a(this, collection);
        }

        @Override
        public boolean isEmpty() {
            return !v55.b(this.b, this.c);
        }

        @Override
        public Iterator iterator() {
            return Iterators.k(this.b.iterator(), this.c);
        }

        @Override
        public boolean remove(Object obj) {
            return contains(obj) && this.b.remove(obj);
        }

        @Override
        public boolean removeAll(Collection collection) {
            Iterator it = this.b.iterator();
            boolean z = false;
            while (it.hasNext()) {
                Object next = it.next();
                if (this.c.apply(next) && collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override
        public boolean retainAll(Collection collection) {
            Iterator it = this.b.iterator();
            boolean z = false;
            while (it.hasNext()) {
                Object next = it.next();
                if (this.c.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override
        public int size() {
            Iterator it = this.b.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.c.apply(it.next())) {
                    i++;
                }
            }
            return i;
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

    public static boolean a(Collection collection, Collection collection2) {
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static StringBuilder b(int i) {
        k71.b(i, PlayAudioData.TAG_SIZE);
        return new StringBuilder((int) Math.min(((long) i) * 8, 1073741824L));
    }

    public static boolean c(Collection collection, Object obj) {
        xd8.o(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static boolean d(Collection collection, Object obj) {
        xd8.o(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static String e(Collection collection) {
        StringBuilder sbB = b(collection.size());
        sbB.append('[');
        boolean z = true;
        for (Object obj : collection) {
            if (!z) {
                sbB.append(", ");
            }
            if (obj == collection) {
                sbB.append("(this Collection)");
            } else {
                sbB.append(obj);
            }
            z = false;
        }
        sbB.append(']');
        return sbB.toString();
    }
}
