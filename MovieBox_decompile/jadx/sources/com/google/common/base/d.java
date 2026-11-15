package com.google.common.base;

import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

public abstract class d {

    private static final Map f29407a = new WeakHashMap();

    static Map a(Class cls) {
        Map mapC;
        Map map = f29407a;
        synchronized (map) {
            try {
                mapC = (Map) map.get(cls);
                if (mapC == null) {
                    mapC = c(cls);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return mapC;
    }

    public static Optional b(Class cls, String str) {
        m.o(cls);
        m.o(str);
        return l.b(cls, str);
    }

    private static Map c(Class cls) {
        HashMap map = new HashMap();
        for (Enum r10 : EnumSet.allOf(cls)) {
            map.put(r10.name(), new WeakReference(r10));
        }
        f29407a.put(cls, map);
        return map;
    }
}
