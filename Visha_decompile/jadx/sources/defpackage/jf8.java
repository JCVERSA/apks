package defpackage;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public abstract class jf8 {
    public static final Map a;
    public static final Map b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(16);
        a(linkedHashMap, linkedHashMap2, Boolean.TYPE, Boolean.class);
        a(linkedHashMap, linkedHashMap2, Byte.TYPE, Byte.class);
        a(linkedHashMap, linkedHashMap2, Character.TYPE, Character.class);
        a(linkedHashMap, linkedHashMap2, Double.TYPE, Double.class);
        a(linkedHashMap, linkedHashMap2, Float.TYPE, Float.class);
        a(linkedHashMap, linkedHashMap2, Integer.TYPE, Integer.class);
        a(linkedHashMap, linkedHashMap2, Long.TYPE, Long.class);
        a(linkedHashMap, linkedHashMap2, Short.TYPE, Short.class);
        a(linkedHashMap, linkedHashMap2, Void.TYPE, Void.class);
        a = Collections.unmodifiableMap(linkedHashMap);
        b = Collections.unmodifiableMap(linkedHashMap2);
    }

    public static void a(Map map, Map map2, Class cls, Class cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    public static Set b() {
        return b.keySet();
    }

    public static Class c(Class cls) {
        xd8.o(cls);
        Class cls2 = (Class) b.get(cls);
        return cls2 == null ? cls : cls2;
    }

    public static Class d(Class cls) {
        xd8.o(cls);
        Class cls2 = (Class) a.get(cls);
        return cls2 == null ? cls : cls2;
    }
}
