package com.google.common.collect;

import defpackage.kc7;
import defpackage.o74;
import defpackage.xd8;
import java.io.Serializable;

final class ByFunctionOrdering<F, T> extends Ordering<F> implements Serializable {
    private static final long serialVersionUID = 0;
    final o74 function;
    final Ordering<T> ordering;

    public ByFunctionOrdering(o74 o74Var, Ordering<T> ordering) {
        this.function = (o74) xd8.o(o74Var);
        this.ordering = (Ordering) xd8.o(ordering);
    }

    @Override
    public int compare(F f, F f2) {
        return this.ordering.compare((T) this.function.apply(f), (T) this.function.apply(f2));
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
        return kc7.b(this.function, this.ordering);
    }

    public String toString() {
        return this.ordering + ".onResultOf(" + this.function + ")";
    }
}
