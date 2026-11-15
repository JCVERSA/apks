package io.appmetrica.analytics.impl;

import java.util.HashMap;
import java.util.Map;

public class Jc {
    public final Map a;
    public final Object b;

    public Jc(Object obj) {
        this(new HashMap(), obj);
    }

    public final void a(Object obj, Object obj2) {
        this.a.put(obj, obj2);
    }

    public Jc(HashMap map, Object obj) {
        this.a = map;
        this.b = obj;
    }

    public final Object a(Object obj) {
        Object obj2 = this.a.get(obj);
        return obj2 == null ? this.b : obj2;
    }
}
