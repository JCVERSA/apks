package com.google.common.collect;

import defpackage.xd8;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;

public abstract class d extends b implements p {
    final Comparator<Object> comparator;
    private transient p descendingMultiset;

    public class a extends h {
        public a() {
        }

        @Override
        public Iterator iterator() {
            return d.this.descendingIterator();
        }

        @Override
        public Iterator l() {
            return d.this.descendingEntryIterator();
        }

        @Override
        public p m() {
            return d.this;
        }
    }

    public d() {
        this(Ordering.natural());
    }

    public Comparator comparator() {
        return this.comparator;
    }

    public p createDescendingMultiset() {
        return new a();
    }

    public abstract Iterator descendingEntryIterator();

    public Iterator<Object> descendingIterator() {
        return Multisets.i(descendingMultiset());
    }

    public p descendingMultiset() {
        p pVar = this.descendingMultiset;
        if (pVar != null) {
            return pVar;
        }
        p pVarCreateDescendingMultiset = createDescendingMultiset();
        this.descendingMultiset = pVarCreateDescendingMultiset;
        return pVarCreateDescendingMultiset;
    }

    public j.a firstEntry() {
        Iterator itEntryIterator = entryIterator();
        if (itEntryIterator.hasNext()) {
            return (j.a) itEntryIterator.next();
        }
        return null;
    }

    public j.a lastEntry() {
        Iterator itDescendingEntryIterator = descendingEntryIterator();
        if (itDescendingEntryIterator.hasNext()) {
            return (j.a) itDescendingEntryIterator.next();
        }
        return null;
    }

    public j.a pollFirstEntry() {
        Iterator itEntryIterator = entryIterator();
        if (!itEntryIterator.hasNext()) {
            return null;
        }
        j.a aVar = (j.a) itEntryIterator.next();
        j.a aVarG = Multisets.g(aVar.getElement(), aVar.getCount());
        itEntryIterator.remove();
        return aVarG;
    }

    public j.a pollLastEntry() {
        Iterator itDescendingEntryIterator = descendingEntryIterator();
        if (!itDescendingEntryIterator.hasNext()) {
            return null;
        }
        j.a aVar = (j.a) itDescendingEntryIterator.next();
        j.a aVarG = Multisets.g(aVar.getElement(), aVar.getCount());
        itDescendingEntryIterator.remove();
        return aVarG;
    }

    public p subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        xd8.o(boundType);
        xd8.o(boundType2);
        return tailMultiset(obj, boundType).headMultiset(obj2, boundType2);
    }

    public d(Comparator comparator) {
        this.comparator = (Comparator) xd8.o(comparator);
    }

    @Override
    public NavigableSet<Object> createElementSet() {
        return new q.b(this);
    }

    @Override
    public NavigableSet elementSet() {
        return (NavigableSet) super.elementSet();
    }
}
