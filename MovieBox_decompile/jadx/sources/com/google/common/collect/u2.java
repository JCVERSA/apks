package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public abstract class u2 extends s2 implements SortedSet {
    protected u2() {
    }

    @Override
    public Comparator<Object> comparator() {
        return l().comparator();
    }

    @Override
    protected abstract SortedSet l();

    @Override
    public Object first() {
        return l().first();
    }

    @Override
    public SortedSet<Object> headSet(Object obj) {
        return l().headSet(obj);
    }

    @Override
    public Object last() {
        return l().last();
    }

    @Override
    protected boolean standardContains(Object obj) {
        try {
            return t2.l(comparator(), tailSet(obj).first(), obj) == 0;
        } catch (ClassCastException | NullPointerException | NoSuchElementException unused) {
            return false;
        }
    }

    @Override
    protected boolean standardRemove(Object obj) {
        try {
            Iterator it = tailSet(obj).iterator();
            if (it.hasNext()) {
                if (t2.l(comparator(), it.next(), obj) == 0) {
                    it.remove();
                    return true;
                }
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    protected SortedSet<Object> standardSubSet(Object obj, Object obj2) {
        return tailSet(obj).headSet(obj2);
    }

    @Override
    public SortedSet<Object> subSet(Object obj, Object obj2) {
        return l().subSet(obj, obj2);
    }

    @Override
    public SortedSet<Object> tailSet(Object obj) {
        return l().tailSet(obj);
    }
}
