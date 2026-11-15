package defpackage;

import java.util.Map;
import java.util.NoSuchElementException;

public abstract class jy5 {
    public static final Object a(Map map, Object obj) {
        y45.j(map, "<this>");
        if (map instanceof fy5) {
            return ((fy5) map).j(obj);
        }
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    public static Map b(Map map, e74 e74Var) {
        y45.j(map, "<this>");
        y45.j(e74Var, "defaultValue");
        return map instanceof fy5 ? b(((fy5) map).i(), e74Var) : new gy5(map, e74Var);
    }

    public static Map c(Map map, e74 e74Var) {
        y45.j(map, "<this>");
        y45.j(e74Var, "defaultValue");
        return map instanceof hw6 ? c(((hw6) map).i(), e74Var) : new iw6(map, e74Var);
    }
}
