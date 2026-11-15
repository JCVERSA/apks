package com.google.common.collect;

import java.io.Serializable;

final class ByFunctionOrdering<F, T> extends Ordering<F> implements Serializable {
    private static final long serialVersionUID = 0;
    final com.google.common.base.f function;
    final Ordering<T> ordering;

    ByFunctionOrdering(com.google.common.base.f fVar, Ordering<T> ordering) {
        this.function = (com.google.common.base.f) com.google.common.base.m.o(fVar);
        this.ordering = (Ordering) com.google.common.base.m.o(ordering);
    }

    @Override
    public int compare(F f10, F f11) {
        return this.ordering.compare((T) this.function.apply(f10), (T) this.function.apply(f11));
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByFunctionOrdering)) {
            return false;
        }
        ByFunctionOrdering byFunctionOrdering = (ByFunctionOrdering) obj;
        return this.function.equals(byFunctionOrdering.function) && this.ordering.equals(byFunctionOrdering.ordering);
    }

    public int hashCode() {
        return com.google.common.base.j.b(this.function, this.ordering);
    }

    public String toString() {
        return this.ordering + ".onResultOf(" + this.function + ")";
    }
}
