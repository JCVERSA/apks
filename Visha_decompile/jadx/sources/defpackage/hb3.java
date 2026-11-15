package defpackage;

import com.google.common.base.Optional;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

public abstract class hb3 {
    public static final Map a = new WeakHashMap();

    public static Map a(Class cls) {
        Map mapC;
        Map map = a;
        synchronized (map) {
            try {
                mapC = (Map) map.get(cls);
                if (mapC == null) {
                    mapC = c(cls);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mapC;
    }

    public static Optional b(Class cls, String str) {
        xd8.o(cls);
        xd8.o(str);
        return r18.b(cls, str);
    }

    public static Map c(Class cls) {
        HashMap map = new HashMap();
        for (Enum r2 : EnumSet.allOf(cls)) {
            map.put(r2.name(), new WeakReference(r2));
        }
        a.put(cls, map);
        return map;
    }
}
