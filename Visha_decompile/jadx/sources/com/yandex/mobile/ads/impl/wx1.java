package com.yandex.mobile.ads.impl;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedSet;

public final class wx1 {

    public static class a<E> extends qq<E> implements Set<E> {
        public a(Set<E> set, wj1<? super E> wj1Var) {
            super(set, wj1Var);
        }

        @Override
        public final boolean equals(Object obj) {
            return wx1.a(this, obj);
        }

        @Override
        public final int hashCode() {
            return wx1.a(this);
        }
    }

    public static class b<E> extends a<E> implements SortedSet<E> {
        public b(SortedSet<E> sortedSet, wj1<? super E> wj1Var) {
            super(sortedSet, wj1Var);
        }

        @Override
        public final Comparator<? super E> comparator() {
            return ((SortedSet) this.b).comparator();
        }

        @Override
        public final E first() {
            Iterator<E> it = this.b.iterator();
            wj1<? super E> wj1Var = this.c;
            it.getClass();
            wj1Var.getClass();
            while (it.hasNext()) {
                E next = it.next();
                if (wj1Var.apply(next)) {
                    return next;
                }
            }
            throw new NoSuchElementException();
        }

        @Override
        public final SortedSet<E> headSet(E e) {
            return new b(((SortedSet) this.b).headSet(e), this.c);
        }

        @Override
        public final E last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.b;
            while (true) {
                E e = (Object) sortedSetHeadSet.last();
                if (this.c.apply(e)) {
                    return e;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(e);
            }
        }

        @Override
        public final SortedSet<E> subSet(E e, E e2) {
            return new b(((SortedSet) this.b).subSet(e, e2), this.c);
        }

        @Override
        public final SortedSet<E> tailSet(E e) {
            return new b(((SortedSet) this.b).tailSet(e), this.c);
        }
    }

    public static abstract class c<E> extends AbstractSet<E> {
        @Override
        public boolean removeAll(Collection<?> collection) {
            collection.getClass();
            if (collection instanceof y31) {
                collection = ((y31) collection).a();
            }
            boolean zRemove = false;
            if (!(collection instanceof Set) || collection.size() <= size()) {
                Iterator<?> it = collection.iterator();
                while (it.hasNext()) {
                    zRemove |= remove(it.next());
                }
            } else {
                Iterator<E> it2 = iterator();
                while (it2.hasNext()) {
                    if (collection.contains(it2.next())) {
                        it2.remove();
                        zRemove = true;
                    }
                }
            }
            return zRemove;
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            collection.getClass();
            return super.retainAll(collection);
        }
    }

    public static abstract class d<E> extends AbstractSet<E> {
        @Override
        @Deprecated
        public final boolean add(E e) {
            throw new UnsupportedOperationException();
        }

        @Override
        @Deprecated
        public final boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        @Deprecated
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        @Deprecated
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        @Deprecated
        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        @Deprecated
        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        private d() {
        }
    }

    public static boolean a(Set<?> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> Set<E> a(Set<E> set, wj1<? super E> wj1Var) {
        if (set instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) set;
            if (sortedSet instanceof a) {
                a aVar = (a) sortedSet;
                return new b((SortedSet) aVar.b, xj1.a(aVar.c, wj1Var));
            }
            sortedSet.getClass();
            wj1Var.getClass();
            return new b(sortedSet, wj1Var);
        }
        if (set instanceof a) {
            a aVar2 = (a) set;
            return new a((Set) aVar2.b, xj1.a(aVar2.c, wj1Var));
        }
        set.getClass();
        wj1Var.getClass();
        return new a(set, wj1Var);
    }

    public static int a(Set<?> set) {
        Iterator<?> it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    public static d a(mk0 mk0Var, mk0 mk0Var2) {
        if (mk0Var == null) {
            throw new NullPointerException("set1");
        }
        if (mk0Var2 != null) {
            return new vx1(mk0Var, mk0Var2);
        }
        throw new NullPointerException("set2");
    }

    public static <E> Set<E> a() {
        return Collections.newSetFromMap(new IdentityHashMap());
    }
}
