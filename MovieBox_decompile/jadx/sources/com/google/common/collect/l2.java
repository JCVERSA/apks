package com.google.common.collect;

import java.util.concurrent.ConcurrentMap;

public abstract class l2 extends n2 implements ConcurrentMap {
    protected l2() {
    }

    @Override
    protected abstract ConcurrentMap l();

    @Override
    public Object putIfAbsent(Object obj, Object obj2) {
        return l().putIfAbsent(obj, obj2);
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        return l().remove(obj, obj2);
    }

    @Override
    public Object replace(Object obj, Object obj2) {
        return l().replace(obj, obj2);
    }

    @Override
    public boolean replace(Object obj, Object obj2, Object obj3) {
        return l().replace(obj, obj2, obj3);
    }
}
