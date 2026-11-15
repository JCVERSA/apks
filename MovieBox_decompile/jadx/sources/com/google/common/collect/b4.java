package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;

abstract class b4 {

    static class a extends Multisets.c implements SortedSet {

        private final a4 f29937a;

        a(a4 a4Var) {
            this.f29937a = a4Var;
        }

        @Override
        public final a4 a() {
            return this.f29937a;
        }

        @Override
        public Comparator comparator() {
            return a().comparator();
        }

        @Override
        public Object first() {
            return b4.d(a().firstEntry());
        }

        @Override
        public SortedSet headSet(Object obj) {
            return a().headMultiset(obj, BoundType.OPEN).elementSet();
        }

        @Override
        public Iterator iterator() {
            return Multisets.e(a().entrySet().iterator());
        }

        @Override
        public Object last() {
            return b4.d(a().lastEntry());
        }

        @Override
        public SortedSet subSet(Object obj, Object obj2) {
            return a().subMultiset(obj, BoundType.CLOSED, obj2, BoundType.OPEN).elementSet();
        }

        @Override
        public SortedSet tailSet(Object obj) {
            return a().tailMultiset(obj, BoundType.CLOSED).elementSet();
        }
    }

    static class b extends a implements NavigableSet {
        b(a4 a4Var) {
            super(a4Var);
        }

        @Override
        public Object ceiling(Object obj) {
            return b4.c(a().tailMultiset(obj, BoundType.CLOSED).firstEntry());
        }

        @Override
        public Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override
        public NavigableSet descendingSet() {
            return new b(a().descendingMultiset());
        }

        @Override
        public Object floor(Object obj) {
            return b4.c(a().headMultiset(obj, BoundType.CLOSED).lastEntry());
        }

        @Override
        public NavigableSet headSet(Object obj, boolean z10) {
            return new b(a().headMultiset(obj, BoundType.forBoolean(z10)));
        }

        @Override
        public Object higher(Object obj) {
            return b4.c(a().tailMultiset(obj, BoundType.OPEN).firstEntry());
        }

        @Override
        public Object lower(Object obj) {
            return b4.c(a().headMultiset(obj, BoundType.OPEN).lastEntry());
        }

        @Override
        public Object pollFirst() {
            return b4.c(a().pollFirstEntry());
        }

        @Override
        public Object pollLast() {
            return b4.c(a().pollLastEntry());
        }

        @Override
        public NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
            return new b(a().subMultiset(obj, BoundType.forBoolean(z10), obj2, BoundType.forBoolean(z11)));
        }

        @Override
        public NavigableSet tailSet(Object obj, boolean z10) {
            return new b(a().tailMultiset(obj, BoundType.forBoolean(z10)));
        }
    }

    public static Object c(l3.a aVar) {
        if (aVar == null) {
            return null;
        }
        return aVar.getElement();
    }

    public static Object d(l3.a aVar) {
        if (aVar != null) {
            return aVar.getElement();
        }
        throw new NoSuchElementException();
    }
}
