package com.yandex.mobile.ads.impl;

import java.io.Serializable;

final class pr1 extends jf1<Comparable<?>> implements Serializable {
    static final pr1 b = new pr1();
    private static final long serialVersionUID = 0;

    private pr1() {
    }

    private Object readResolve() {
        return b;
    }

    @Override
    public final <S extends Comparable<?>> jf1<S> b() {
        return qc1.b;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
