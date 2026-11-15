package com.google.common.collect;

import java.io.Serializable;

final class NullsLastOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Ordering<? super T> ordering;

    NullsLastOrdering(Ordering<? super T> ordering) {
        this.ordering = ordering;
    }

    @Override
    public int compare(T t10, T t11) {
        if (t10 == t11) {
            return 0;
        }
        if (t10 == null) {
            return 1;
        }
        if (t11 == null) {
            return -1;
        }
        return this.ordering.compare(t10, t11);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof NullsLastOrdering) {
            return this.ordering.equals(((NullsLastOrdering) obj).ordering);
        }
        return false;
    }

    public int hashCode() {
        return this.ordering.hashCode() ^ (-921210296);
    }

    @Override
    public <S extends T> Ordering<S> nullsFirst() {
        return this.ordering.nullsFirst();
    }

    @Override
    public <S extends T> Ordering<S> nullsLast() {
        return this;
    }

    @Override
    public <S extends T> Ordering<S> reverse() {
        return this.ordering.reverse().nullsFirst();
    }

    public String toString() {
        return this.ordering + ".nullsLast()";
    }
}
