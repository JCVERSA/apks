package yz;

import java.util.HashMap;
import java.util.Map;

public class d {

    protected static Map f76436a = new HashMap();

    public static c a() {
        return null;
    }

    public static c b() {
        return null;
    }

    public static c c(Class cls) {
        android.support.v4.media.session.c.a(f76436a.get(cls));
        return null;
    }

    public static boolean d() {
        return false;
    }

    public static boolean e() {
        return false;
    }

    public static boolean f(Class cls) {
        if (cls == null) {
            return false;
        }
        if (f76436a.containsKey(cls)) {
            return true;
        }
        Class superclass = cls;
        do {
            if (cls != superclass && f76436a.containsKey(superclass)) {
                Map map = f76436a;
                map.put(cls, map.get(superclass));
                return true;
            }
            for (Class<?> cls2 : superclass.getInterfaces()) {
                if (f76436a.containsKey(cls2)) {
                    Map map2 = f76436a;
                    map2.put(cls, map2.get(cls2));
                    return true;
                }
            }
            superclass = superclass.getSuperclass();
            if (superclass == null) {
                break;
            }
        } while (superclass != Object.class);
        return false;
    }
}
