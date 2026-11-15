package com.google.common.collect;

import com.google.common.base.Predicates;
import defpackage.dgb;
import defpackage.he8;
import defpackage.l54;
import defpackage.xd8;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentHashMap;

public abstract class Sets {

    public class a extends e {
        public final Set b;
        public final Set c;

        public class C0100a extends AbstractIterator {
            public final Iterator d;

            public C0100a() {
                this.d = a.this.b.iterator();
            }

            @Override
            public Object a() {
                while (this.d.hasNext()) {
                    Object next = this.d.next();
                    if (a.this.c.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Set set, Set set2) {
            super(null);
            this.b = set;
            this.c = set2;
        }

        @Override
        public dgb iterator() {
            return new C0100a();
        }

        @Override
        public boolean contains(Object obj) {
            return this.b.contains(obj) && this.c.contains(obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            return this.b.containsAll(collection) && this.c.containsAll(collection);
        }

        @Override
        public boolean isEmpty() {
            return Collections.disjoint(this.c, this.b);
        }

        @Override
        public int size() {
            Iterator it = this.b.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (this.c.contains(it.next())) {
                    i++;
                }
            }
            return i;
        }
    }

    public static class b extends g.a implements Set {
        public b(Set set, he8 he8Var) {
            super(set, he8Var);
        }

        @Override
        public boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override
        public int hashCode() {
            return Sets.d(this);
        }
    }

    public static class c extends b implements SortedSet {
        public c(SortedSet sortedSet, he8 he8Var) {
            super(sortedSet, he8Var);
        }

        @Override
        public Comparator comparator() {
            return ((SortedSet) this.b).comparator();
        }

        @Override
        public Object first() {
            return Iterators.l(this.b.iterator(), this.c);
        }

        @Override
        public SortedSet headSet(Object obj) {
            return new c(((SortedSet) this.b).headSet(obj), this.c);
        }

        @Override
        public Object last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.b;
            while (true) {
                Object objLast = sortedSetHeadSet.last();
                if (this.c.apply(objLast)) {
                    return objLast;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
            }
        }

        @Override
        public SortedSet subSet(Object obj, Object obj2) {
            return new c(((SortedSet) this.b).subSet(obj, obj2), this.c);
        }

        @Override
        public SortedSet tailSet(Object obj) {
            return new c(((SortedSet) this.b).tailSet(obj), this.c);
        }
    }

    public static abstract class d extends AbstractSet {
        @Override
        public boolean removeAll(Collection collection) {
            return Sets.j(this, collection);
        }

        @Override
        public boolean retainAll(Collection collection) {
            return super.retainAll((Collection) xd8.o(collection));
        }
    }

    public static abstract class e extends AbstractSet {
        public e(o oVar) {
            this();
        }

        @Override
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        public e() {
        }
    }

    public static boolean a(Set set, Object obj) {
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

    public static Set b(Set set, he8 he8Var) {
        if (set instanceof SortedSet) {
            return c((SortedSet) set, he8Var);
        }
        if (!(set instanceof b)) {
            return new b((Set) xd8.o(set), (he8) xd8.o(he8Var));
        }
        b bVar = (b) set;
        return new b((Set) bVar.b, Predicates.c(bVar.c, he8Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SortedSet c(SortedSet sortedSet, he8 he8Var) {
        if (!(sortedSet instanceof b)) {
            return new c((SortedSet) xd8.o(sortedSet), (he8) xd8.o(he8Var));
        }
        b bVar = (b) sortedSet;
        return new c((SortedSet) bVar.b, Predicates.c(bVar.c, he8Var));
    }

    public static int d(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i = ~(~(i + (next != null ? next.hashCode() : 0)));
        }
        return i;
    }

    public static e e(Set set, Set set2) {
        xd8.p(set, "set1");
        xd8.p(set2, "set2");
        return new a(set, set2);
    }

    public static Set f() {
        return Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public static HashSet g() {
        return new HashSet();
    }

    public static HashSet h(int i) {
        return new HashSet(Maps.d(i));
    }

    public static Set i() {
        return Collections.newSetFromMap(Maps.q());
    }

    public static boolean j(Set set, Collection collection) {
        xd8.o(collection);
        if (collection instanceof j) {
            collection = ((j) collection).elementSet();
        }
        return (!(collection instanceof Set) || collection.size() <= set.size()) ? k(set, collection.iterator()) : Iterators.u(set.iterator(), collection);
    }

    public static boolean k(Set set, Iterator it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    public static NavigableSet l(NavigableSet navigableSet) {
        return ((navigableSet instanceof ImmutableCollection) || (navigableSet instanceof UnmodifiableNavigableSet)) ? navigableSet : new UnmodifiableNavigableSet(navigableSet);
    }

    public static final class UnmodifiableNavigableSet<E> extends l54 implements NavigableSet<E>, Serializable {
        private static final long serialVersionUID = 0;
        public transient UnmodifiableNavigableSet b;
        private final NavigableSet<E> delegate;
        private final SortedSet<E> unmodifiableDelegate;

        public UnmodifiableNavigableSet(NavigableSet<E> navigableSet) {
            this.delegate = (NavigableSet) xd8.o(navigableSet);
            this.unmodifiableDelegate = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override
        public E ceiling(E e) {
            return this.delegate.ceiling(e);
        }

        @Override
        public Iterator<E> descendingIterator() {
            return Iterators.B(this.delegate.descendingIterator());
        }

        @Override
        public NavigableSet<E> descendingSet() {
            UnmodifiableNavigableSet unmodifiableNavigableSet = this.b;
            if (unmodifiableNavigableSet != null) {
                return unmodifiableNavigableSet;
            }
            UnmodifiableNavigableSet unmodifiableNavigableSet2 = new UnmodifiableNavigableSet(this.delegate.descendingSet());
            this.b = unmodifiableNavigableSet2;
            unmodifiableNavigableSet2.b = this;
            return unmodifiableNavigableSet2;
        }

        @Override
        public E floor(E e) {
            return this.delegate.floor(e);
        }

        @Override
        public NavigableSet<E> headSet(E e, boolean z) {
            return Sets.l(this.delegate.headSet(e, z));
        }

        @Override
        public E higher(E e) {
            return this.delegate.higher(e);
        }

        @Override
        public E lower(E e) {
            return this.delegate.lower(e);
        }

        @Override
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return Sets.l(this.delegate.subSet(e, z, e2, z2));
        }

        @Override
        public NavigableSet<E> tailSet(E e, boolean z) {
            return Sets.l(this.delegate.tailSet(e, z));
        }

        @Override
        public SortedSet<E> f() {
            return this.unmodifiableDelegate;
        }
    }
}
