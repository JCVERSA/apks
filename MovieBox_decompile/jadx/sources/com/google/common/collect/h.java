package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;

abstract class h extends d implements a4 {
    final Comparator<Object> comparator;
    private transient a4 descendingMultiset;

    class a extends i2 {
        a() {
        }

        @Override
        public Iterator iterator() {
            return h.this.descendingIterator();
        }

        @Override
        Iterator n() {
            return h.this.descendingEntryIterator();
        }

        @Override
        a4 o() {
            return h.this;
        }
    }

    h() {
        this(Ordering.natural());
    }

    public Comparator comparator() {
        return this.comparator;
    }

    a4 createDescendingMultiset() {
        return new a();
    }

    abstract Iterator descendingEntryIterator();

    Iterator<Object> descendingIterator() {
        return Multisets.i(descendingMultiset());
    }

    public a4 descendingMultiset() {
        a4 a4Var = this.descendingMultiset;
        if (a4Var != null) {
            return a4Var;
        }
        a4 a4VarCreateDescendingMultiset = createDescendingMultiset();
        this.descendingMultiset = a4VarCreateDescendingMultiset;
        return a4VarCreateDescendingMultiset;
    }

    public l3.a firstEntry() {
        Iterator itEntryIterator = entryIterator();
        if (itEntryIterator.hasNext()) {
            return (l3.a) itEntryIterator.next();
        }
        return null;
    }

    public l3.a lastEntry() {
        Iterator itDescendingEntryIterator = descendingEntryIterator();
        if (itDescendingEntryIterator.hasNext()) {
            return (l3.a) itDescendingEntryIterator.next();
        }
        return null;
    }

    public l3.a pollFirstEntry() {
        Iterator itEntryIterator = entryIterator();
        if (!itEntryIterator.hasNext()) {
            return null;
        }
        l3.a aVar = (l3.a) itEntryIterator.next();
        l3.a aVarG = Multisets.g(aVar.getElement(), aVar.getCount());
        itEntryIterator.remove();
        return aVarG;
    }

    public l3.a pollLastEntry() {
        Iterator itDescendingEntryIterator = descendingEntryIterator();
        if (!itDescendingEntryIterator.hasNext()) {
            return null;
        }
        l3.a aVar = (l3.a) itDescendingEntryIterator.next();
        l3.a aVarG = Multisets.g(aVar.getElement(), aVar.getCount());
        itDescendingEntryIterator.remove();
        return aVarG;
    }

    public a4 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        com.google.common.base.m.o(boundType);
        com.google.common.base.m.o(boundType2);
        return tailMultiset(obj, boundType).headMultiset(obj2, boundType2);
    }

    h(Comparator comparator) {
        this.comparator = (Comparator) com.google.common.base.m.o(comparator);
    }

    @Override
    public NavigableSet<Object> createElementSet() {
        return new b4.b(this);
    }

    @Override
    public NavigableSet elementSet() {
        return (NavigableSet) super.elementSet();
    }
}
