package com.google.common.collect;

import java.util.Iterator;

abstract class f implements u3 {
    f() {
    }

    public abstract void add(Range range);

    public void addAll(u3 u3Var) {
        addAll(u3Var.asRanges());
    }

    public void clear() {
        remove(Range.all());
    }

    public boolean contains(Comparable comparable) {
        return rangeContaining(comparable) != null;
    }

    @Override
    public abstract boolean encloses(Range range);

    public boolean enclosesAll(u3 u3Var) {
        return enclosesAll(u3Var.asRanges());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof u3) {
            return asRanges().equals(((u3) obj).asRanges());
        }
        return false;
    }

    public final int hashCode() {
        return asRanges().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return asRanges().isEmpty();
    }

    public abstract Range rangeContaining(Comparable comparable);

    public abstract void remove(Range range);

    @Override
    public void removeAll(u3 u3Var) {
        removeAll(u3Var.asRanges());
    }

    public final String toString() {
        return asRanges().toString();
    }

    public void addAll(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            add((Range) it.next());
        }
    }

    public boolean enclosesAll(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (!encloses((Range) it.next())) {
                return false;
            }
        }
        return true;
    }

    public void removeAll(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            remove((Range) it.next());
        }
    }
}
