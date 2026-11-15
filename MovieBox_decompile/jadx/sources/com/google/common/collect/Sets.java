package com.google.common.collect;

import com.google.common.base.Predicates;
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

public abstract class Sets {

    class a extends f {

        final Set f29831a;

        final Set f29832b;

        class C0383a extends AbstractIterator {

            final Iterator f29833c;

            final Iterator f29834d;

            C0383a() {
                this.f29833c = a.this.f29831a.iterator();
                this.f29834d = a.this.f29832b.iterator();
            }

            @Override
            protected Object a() {
                if (this.f29833c.hasNext()) {
                    return this.f29833c.next();
                }
                while (this.f29834d.hasNext()) {
                    Object next = this.f29834d.next();
                    if (!a.this.f29831a.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Set set, Set set2) {
            super(null);
            this.f29831a = set;
            this.f29832b = set2;
        }

        @Override
        public r4 iterator() {
            return new C0383a();
        }

        @Override
        public boolean contains(Object obj) {
            return this.f29831a.contains(obj) || this.f29832b.contains(obj);
        }

        @Override
        public boolean isEmpty() {
            return this.f29831a.isEmpty() && this.f29832b.isEmpty();
        }

        @Override
        public int size() {
            int size = this.f29831a.size();
            Iterator it = this.f29832b.iterator();
            while (it.hasNext()) {
                if (!this.f29831a.contains(it.next())) {
                    size++;
                }
            }
            return size;
        }
    }

    class b extends f {

        final Set f29836a;

        final Set f29837b;

        class a extends AbstractIterator {

            final Iterator f29838c;

            a() {
                this.f29838c = b.this.f29836a.iterator();
            }

            @Override
            protected Object a() {
                while (this.f29838c.hasNext()) {
                    Object next = this.f29838c.next();
                    if (b.this.f29837b.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Set set, Set set2) {
            super(null);
            this.f29836a = set;
            this.f29837b = set2;
        }

        @Override
        public r4 iterator() {
            return new a();
        }

        @Override
        public boolean contains(Object obj) {
            return this.f29836a.contains(obj) && this.f29837b.contains(obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            return this.f29836a.containsAll(collection) && this.f29837b.containsAll(collection);
        }

        @Override
        public boolean isEmpty() {
            return Collections.disjoint(this.f29837b, this.f29836a);
        }

        @Override
        public int size() {
            Iterator it = this.f29836a.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (this.f29837b.contains(it.next())) {
                    i10++;
                }
            }
            return i10;
        }
    }

    private static class c extends f2.a implements Set {
        c(Set set, com.google.common.base.n nVar) {
            super(set, nVar);
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

    private static class d extends c implements SortedSet {
        d(SortedSet sortedSet, com.google.common.base.n nVar) {
            super(sortedSet, nVar);
        }

        @Override
        public Comparator comparator() {
            return ((SortedSet) this.f29960a).comparator();
        }

        @Override
        public Object first() {
            return Iterators.l(this.f29960a.iterator(), this.f29961b);
        }

        @Override
        public SortedSet headSet(Object obj) {
            return new d(((SortedSet) this.f29960a).headSet(obj), this.f29961b);
        }

        @Override
        public Object last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.f29960a;
            while (true) {
                Object objLast = sortedSetHeadSet.last();
                if (this.f29961b.apply(objLast)) {
                    return objLast;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
            }
        }

        @Override
        public SortedSet subSet(Object obj, Object obj2) {
            return new d(((SortedSet) this.f29960a).subSet(obj, obj2), this.f29961b);
        }

        @Override
        public SortedSet tailSet(Object obj) {
            return new d(((SortedSet) this.f29960a).tailSet(obj), this.f29961b);
        }
    }

    static abstract class e extends AbstractSet {
        e() {
        }

        @Override
        public boolean removeAll(Collection collection) {
            return Sets.i(this, collection);
        }

        @Override
        public boolean retainAll(Collection collection) {
            return super.retainAll((Collection) com.google.common.base.m.o(collection));
        }
    }

    public static abstract class f extends AbstractSet {
        f(a aVar) {
            this();
        }

        public abstract r4 iterator();

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

        private f() {
        }
    }

    static boolean a(Set set, Object obj) {
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

    public static Set b(Set set, com.google.common.base.n nVar) {
        if (set instanceof SortedSet) {
            return c((SortedSet) set, nVar);
        }
        if (!(set instanceof c)) {
            return new c((Set) com.google.common.base.m.o(set), (com.google.common.base.n) com.google.common.base.m.o(nVar));
        }
        c cVar = (c) set;
        return new c((Set) cVar.f29960a, Predicates.c(cVar.f29961b, nVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SortedSet c(SortedSet sortedSet, com.google.common.base.n nVar) {
        if (!(sortedSet instanceof c)) {
            return new d((SortedSet) com.google.common.base.m.o(sortedSet), (com.google.common.base.n) com.google.common.base.m.o(nVar));
        }
        c cVar = (c) sortedSet;
        return new d((SortedSet) cVar.f29960a, Predicates.c(cVar.f29961b, nVar));
    }

    static int d(Set set) {
        Iterator it = set.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i10 = ~(~(i10 + (next != null ? next.hashCode() : 0)));
        }
        return i10;
    }

    public static f e(Set set, Set set2) {
        com.google.common.base.m.p(set, "set1");
        com.google.common.base.m.p(set2, "set2");
        return new b(set, set2);
    }

    public static HashSet f() {
        return new HashSet();
    }

    public static HashSet g(int i10) {
        return new HashSet(Maps.d(i10));
    }

    public static Set h() {
        return Collections.newSetFromMap(Maps.q());
    }

    static boolean i(Set set, Collection collection) {
        com.google.common.base.m.o(collection);
        if (collection instanceof l3) {
            collection = ((l3) collection).elementSet();
        }
        return (!(collection instanceof Set) || collection.size() <= set.size()) ? j(set, collection.iterator()) : Iterators.u(set.iterator(), collection);
    }

    static boolean j(Set set, Iterator it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    public static f k(Set set, Set set2) {
        com.google.common.base.m.p(set, "set1");
        com.google.common.base.m.p(set2, "set2");
        return new a(set, set2);
    }

    public static NavigableSet l(NavigableSet navigableSet) {
        return ((navigableSet instanceof ImmutableCollection) || (navigableSet instanceof UnmodifiableNavigableSet)) ? navigableSet : new UnmodifiableNavigableSet(navigableSet);
    }

    static final class UnmodifiableNavigableSet<E> extends u2 implements NavigableSet<E>, Serializable {
        private static final long serialVersionUID = 0;

        private transient UnmodifiableNavigableSet f29830a;
        private final NavigableSet<E> delegate;
        private final SortedSet<E> unmodifiableDelegate;

        UnmodifiableNavigableSet(NavigableSet<E> navigableSet) {
            this.delegate = (NavigableSet) com.google.common.base.m.o(navigableSet);
            this.unmodifiableDelegate = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override
        public E ceiling(E e10) {
            return this.delegate.ceiling(e10);
        }

        @Override
        public Iterator<E> descendingIterator() {
            return Iterators.B(this.delegate.descendingIterator());
        }

        @Override
        public NavigableSet<E> descendingSet() {
            UnmodifiableNavigableSet unmodifiableNavigableSet = this.f29830a;
            if (unmodifiableNavigableSet != null) {
                return unmodifiableNavigableSet;
            }
            UnmodifiableNavigableSet unmodifiableNavigableSet2 = new UnmodifiableNavigableSet(this.delegate.descendingSet());
            this.f29830a = unmodifiableNavigableSet2;
            unmodifiableNavigableSet2.f29830a = this;
            return unmodifiableNavigableSet2;
        }

        @Override
        public E floor(E e10) {
            return this.delegate.floor(e10);
        }

        @Override
        public NavigableSet<E> headSet(E e10, boolean z10) {
            return Sets.l(this.delegate.headSet(e10, z10));
        }

        @Override
        public E higher(E e10) {
            return this.delegate.higher(e10);
        }

        @Override
        public E lower(E e10) {
            return this.delegate.lower(e10);
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
        public NavigableSet<E> subSet(E e10, boolean z10, E e11, boolean z11) {
            return Sets.l(this.delegate.subSet(e10, z10, e11, z11));
        }

        @Override
        public NavigableSet<E> tailSet(E e10, boolean z10) {
            return Sets.l(this.delegate.tailSet(e10, z10));
        }

        @Override
        public SortedSet<E> l() {
            return this.unmodifiableDelegate;
        }
    }
}
