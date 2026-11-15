package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;

final class ComparatorOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Comparator<T> comparator;

    ComparatorOrdering(Comparator<T> comparator) {
        this.comparator = (Comparator) com.google.common.base.m.o(comparator);
    }

    @Override
    public int compare(T t10, T t11) {
        return this.comparator.compare(t10, t11);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ComparatorOrdering) {
            return this.comparator.equals(((ComparatorOrdering) obj).comparator);
        }
        return false;
    }

    public int hashCode() {
        return this.comparator.hashCode();
    }

    public String toString() {
        return this.comparator.toString();
    }
}
