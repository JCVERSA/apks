package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public abstract class q {

    public static class a extends Multisets.c implements SortedSet {
        public final p b;

        public a(p pVar) {
            this.b = pVar;
        }

        @Override
        public final p b() {
            return this.b;
        }

        @Override
        public Comparator comparator() {
            return b().comparator();
        }

        @Override
        public Object first() {
            return q.d(b().firstEntry());
        }

        @Override
        public SortedSet headSet(Object obj) {
            return b().headMultiset(obj, BoundType.OPEN).elementSet();
        }

        @Override
        public Iterator iterator() {
            return Multisets.e(b().entrySet().iterator());
        }

        @Override
        public Object last() {
            return q.d(b().lastEntry());
        }

        @Override
        public SortedSet subSet(Object obj, Object obj2) {
            return b().subMultiset(obj, BoundType.CLOSED, obj2, BoundType.OPEN).elementSet();
        }

        @Override
        public SortedSet tailSet(Object obj) {
            return b().tailMultiset(obj, BoundType.CLOSED).elementSet();
        }
    }

    public static class b extends a implements NavigableSet {
        public b(p pVar) {
            super(pVar);
        }

        @Override
        public Object ceiling(Object obj) {
            return q.c(b().tailMultiset(obj, BoundType.CLOSED).firstEntry());
        }

        @Override
        public Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        public NavigableSet descendingSet() {
            return new b(b().descendingMultiset());
        }

        @Override
        public Object floor(Object obj) {
            return q.c(b().headMultiset(obj, BoundType.CLOSED).lastEntry());
        }

        @Override
        public NavigableSet headSet(Object obj, boolean z) {
            return new b(b().headMultiset(obj, BoundType.forBoolean(z)));
        }

        @Override
        public Object higher(Object obj) {
            return q.c(b().tailMultiset(obj, BoundType.OPEN).firstEntry());
        }

        @Override
        public Object lower(Object obj) {
            return q.c(b().headMultiset(obj, BoundType.OPEN).lastEntry());
        }

        @Override
        public Object pollFirst() {
            return q.c(b().pollFirstEntry());
        }

        @Override
        public Object pollLast() {
            return q.c(b().pollLastEntry());
        }

        @Override
        public NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return new b(b().subMultiset(obj, BoundType.forBoolean(z), obj2, BoundType.forBoolean(z2)));
        }

        @Override
        public NavigableSet tailSet(Object obj, boolean z) {
            return new b(b().tailMultiset(obj, BoundType.forBoolean(z)));
        }
    }

    public static Object c(j.a aVar) {
        if (aVar == null) {
            return null;
        }
        return aVar.getElement();
    }

    public static Object d(j.a aVar) {
        if (aVar != null) {
            return aVar.getElement();
        }
        throw new NoSuchElementException();
    }
}
