package com.google.common.collect;

import defpackage.k71;
import defpackage.kc7;
import defpackage.xd8;
import defpackage.y6b;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public abstract class Multisets {

    public static final class DecreasingCount implements Comparator<j.a> {
        static final Comparator<j.a> INSTANCE = new DecreasingCount();

        private DecreasingCount() {
        }

        @Override
        public int compare(j.a aVar, j.a aVar2) {
            return aVar2.getCount() - aVar.getCount();
        }
    }

    public static class ImmutableEntry<E> extends b implements Serializable {
        private static final long serialVersionUID = 0;
        private final int count;
        private final E element;

        public ImmutableEntry(E e, int i) {
            this.element = e;
            this.count = i;
            k71.b(i, "count");
        }

        @Override
        public final int getCount() {
            return this.count;
        }

        @Override
        public final E getElement() {
            return this.element;
        }

        public ImmutableEntry<E> nextInBucket() {
            return null;
        }
    }

    public class a extends y6b {
        public a(Iterator it) {
            super(it);
        }

        @Override
        public Object a(j.a aVar) {
            return aVar.getElement();
        }
    }

    public static abstract class b implements j.a {
        public boolean equals(Object obj) {
            if (!(obj instanceof j.a)) {
                return false;
            }
            j.a aVar = (j.a) obj;
            return getCount() == aVar.getCount() && kc7.a(getElement(), aVar.getElement());
        }

        public int hashCode() {
            Object element = getElement();
            return getCount() ^ (element == null ? 0 : element.hashCode());
        }

        @Override
        public String toString() {
            String strValueOf = String.valueOf(getElement());
            int count = getCount();
            if (count == 1) {
                return strValueOf;
            }
            return strValueOf + " x " + count;
        }
    }

    public static abstract class c extends Sets.d {
        public abstract j b();

        @Override
        public void clear() {
            b().clear();
        }

        @Override
        public boolean contains(Object obj) {
            return b().contains(obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            return b().containsAll(collection);
        }

        @Override
        public boolean isEmpty() {
            return b().isEmpty();
        }

        @Override
        public boolean remove(Object obj) {
            return b().remove(obj, Integer.MAX_VALUE) > 0;
        }

        @Override
        public int size() {
            return b().entrySet().size();
        }
    }

    public static abstract class d extends Sets.d {
        public abstract j b();

        @Override
        public void clear() {
            b().clear();
        }

        @Override
        public boolean contains(Object obj) {
            if (!(obj instanceof j.a)) {
                return false;
            }
            j.a aVar = (j.a) obj;
            return aVar.getCount() > 0 && b().count(aVar.getElement()) == aVar.getCount();
        }

        @Override
        public boolean remove(Object obj) {
            if (obj instanceof j.a) {
                j.a aVar = (j.a) obj;
                Object element = aVar.getElement();
                int count = aVar.getCount();
                if (count != 0) {
                    return b().setCount(element, count, 0);
                }
            }
            return false;
        }
    }

    public static final class e implements Iterator {
        public final j b;
        public final Iterator c;
        public j.a d;
        public int e;
        public int f;
        public boolean g;

        public e(j jVar, Iterator it) {
            this.b = jVar;
            this.c = it;
        }

        @Override
        public boolean hasNext() {
            return this.e > 0 || this.c.hasNext();
        }

        @Override
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.e == 0) {
                j.a aVar = (j.a) this.c.next();
                this.d = aVar;
                int count = aVar.getCount();
                this.e = count;
                this.f = count;
            }
            this.e--;
            this.g = true;
            j.a aVar2 = this.d;
            Objects.requireNonNull(aVar2);
            return aVar2.getElement();
        }

        @Override
        public void remove() {
            k71.e(this.g);
            if (this.f == 1) {
                this.c.remove();
            } else {
                j jVar = this.b;
                j.a aVar = this.d;
                Objects.requireNonNull(aVar);
                jVar.remove(aVar.getElement());
            }
            this.f--;
            this.g = false;
        }
    }

    public static boolean a(j jVar, AbstractMapBasedMultiset abstractMapBasedMultiset) {
        if (abstractMapBasedMultiset.isEmpty()) {
            return false;
        }
        abstractMapBasedMultiset.addTo(jVar);
        return true;
    }

    public static boolean b(j jVar, j jVar2) {
        if (jVar2 instanceof AbstractMapBasedMultiset) {
            return a(jVar, (AbstractMapBasedMultiset) jVar2);
        }
        if (jVar2.isEmpty()) {
            return false;
        }
        for (j.a aVar : jVar2.entrySet()) {
            jVar.add(aVar.getElement(), aVar.getCount());
        }
        return true;
    }

    public static boolean c(j jVar, Collection collection) {
        xd8.o(jVar);
        xd8.o(collection);
        if (collection instanceof j) {
            return b(jVar, d(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return Iterators.a(jVar, collection.iterator());
    }

    public static j d(Iterable iterable) {
        return (j) iterable;
    }

    public static Iterator e(Iterator it) {
        return new a(it);
    }

    public static boolean f(j jVar, Object obj) {
        if (obj == jVar) {
            return true;
        }
        if (obj instanceof j) {
            j jVar2 = (j) obj;
            if (jVar.size() == jVar2.size() && jVar.entrySet().size() == jVar2.entrySet().size()) {
                for (j.a aVar : jVar2.entrySet()) {
                    if (jVar.count(aVar.getElement()) != aVar.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static j.a g(Object obj, int i) {
        return new ImmutableEntry(obj, i);
    }

    public static int h(Iterable iterable) {
        if (iterable instanceof j) {
            return ((j) iterable).elementSet().size();
        }
        return 11;
    }

    public static Iterator i(j jVar) {
        return new e(jVar, jVar.entrySet().iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean j(j jVar, Collection collection) {
        if (collection instanceof j) {
            collection = ((j) collection).elementSet();
        }
        return jVar.elementSet().removeAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean k(j jVar, Collection collection) {
        xd8.o(collection);
        if (collection instanceof j) {
            collection = ((j) collection).elementSet();
        }
        return jVar.elementSet().retainAll(collection);
    }

    public static int l(j jVar, Object obj, int i) {
        k71.b(i, "count");
        int iCount = jVar.count(obj);
        int i2 = i - iCount;
        if (i2 > 0) {
            jVar.add(obj, i2);
        } else if (i2 < 0) {
            jVar.remove(obj, -i2);
        }
        return iCount;
    }

    public static boolean m(j jVar, Object obj, int i, int i2) {
        k71.b(i, "oldCount");
        k71.b(i2, "newCount");
        if (jVar.count(obj) != i) {
            return false;
        }
        jVar.setCount(obj, i2);
        return true;
    }
}
