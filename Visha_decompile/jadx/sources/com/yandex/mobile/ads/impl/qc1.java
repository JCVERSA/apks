package com.yandex.mobile.ads.impl;

import java.io.Serializable;

final class qc1 extends jf1<Comparable<?>> implements Serializable {
    static final qc1 b = new qc1();
    private static final long serialVersionUID = 0;

    private qc1() {
    }

    private Object readResolve() {
        return b;
    }

    @Override
    public final <S extends Comparable<?>> jf1<S> b() {
        return pr1.b;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
