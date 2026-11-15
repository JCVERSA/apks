package io.reactivex.rxjava3.internal.util;

import java.util.HashMap;
import java.util.Map;
import yx.k;

public enum HashMapSupplier implements k {
    INSTANCE;

    public static <K, V> k asSupplier() {
        return INSTANCE;
    }

    @Override
    public Map<Object, Object> get() {
        return new HashMap();
    }
}
