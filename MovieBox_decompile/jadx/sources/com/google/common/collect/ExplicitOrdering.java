package com.google.common.collect;

import java.io.Serializable;
import java.util.List;

final class ExplicitOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final ImmutableMap<T, Integer> rankMap;

    ExplicitOrdering(List<T> list) {
        this(Maps.j(list));
    }

    private int rank(T t10) {
        Integer num = this.rankMap.get(t10);
        if (num != null) {
            return num.intValue();
        }
        throw new Ordering.IncomparableValueException(t10);
    }

    @Override
    public int compare(T t10, T t11) {
        return rank(t10) - rank(t11);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof ExplicitOrdering) {
            return this.rankMap.equals(((ExplicitOrdering) obj).rankMap);
        }
        return false;
    }

    public int hashCode() {
        return this.rankMap.hashCode();
    }

    public String toString() {
        return "Ordering.explicit(" + this.rankMap.keySet() + ")";
    }

    ExplicitOrdering(ImmutableMap<T, Integer> immutableMap) {
        this.rankMap = immutableMap;
    }
}
