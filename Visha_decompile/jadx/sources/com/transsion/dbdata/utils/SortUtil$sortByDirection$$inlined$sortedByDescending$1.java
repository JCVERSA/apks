package com.transsion.dbdata.utils;

import defpackage.e74;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.a;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class SortUtil$sortByDirection$$inlined$sortedByDescending$1<T> implements Comparator {
    final e74 $selector;

    public SortUtil$sortByDirection$$inlined$sortedByDescending$1(e74 e74Var) {
        this.$selector = e74Var;
    }

    @Override
    public final int compare(T t, T t2) {
        e74 e74Var = this.$selector;
        return a.d((Comparable) e74Var.invoke(t2), (Comparable) e74Var.invoke(t));
    }
}
