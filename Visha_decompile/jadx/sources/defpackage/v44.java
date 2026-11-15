package defpackage;

import java.util.concurrent.ConcurrentMap;

public abstract class v44 extends a54 implements ConcurrentMap {
    @Override
    public abstract ConcurrentMap f();

    @Override
    public Object putIfAbsent(Object obj, Object obj2) {
        return f().putIfAbsent(obj, obj2);
    }

    @Override
    public boolean remove(Object obj, Object obj2) {
        return f().remove(obj, obj2);
    }

    @Override
    public Object replace(Object obj, Object obj2) {
        return f().replace(obj, obj2);
    }

    @Override
    public boolean replace(Object obj, Object obj2, Object obj3) {
        return f().replace(obj, obj2, obj3);
    }
}
