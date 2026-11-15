package defpackage;

import java.util.Map;
import java.util.NoSuchElementException;

public abstract class emb {
    public static final Object a(Map map, Object obj, String str) {
        y45.j(map, "<this>");
        Object obj2 = map.get(obj);
        if (obj2 != null) {
            return obj2;
        }
        throw new NoSuchElementException(str);
    }

    public static Object b(Map map, Object obj, String str, int i, Object obj2) {
        if ((i & 2) != 0) {
            str = null;
        }
        return a(map, obj, str);
    }

    public static final go8 c(Object obj) {
        return new bhc(obj);
    }
}
