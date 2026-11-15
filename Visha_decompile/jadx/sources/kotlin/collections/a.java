package kotlin.collections;

import defpackage.jy5;
import defpackage.ky5;
import defpackage.pc9;
import defpackage.y45;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;

public abstract class a extends ky5 {
    public static Map A(Map map) {
        y45.j(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? C(map) : ky5.j(map);
        }
        return l();
    }

    public static final Map B(Pair[] pairArr, Map map) {
        y45.j(pairArr, "<this>");
        y45.j(map, "destination");
        v(map, pairArr);
        return map;
    }

    public static Map C(Map map) {
        y45.j(map, "<this>");
        return new LinkedHashMap(map);
    }

    public static Map l() {
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        y45.h(emptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return emptyMap;
    }

    public static Object m(Map map, Object obj) {
        y45.j(map, "<this>");
        return jy5.a(map, obj);
    }

    public static HashMap n(Pair... pairArr) {
        y45.j(pairArr, "pairs");
        HashMap map = new HashMap(ky5.g(pairArr.length));
        v(map, pairArr);
        return map;
    }

    public static LinkedHashMap o(Pair... pairArr) {
        y45.j(pairArr, "pairs");
        return (LinkedHashMap) B(pairArr, new LinkedHashMap(ky5.g(pairArr.length)));
    }

    public static Map p(Pair... pairArr) {
        y45.j(pairArr, "pairs");
        return pairArr.length > 0 ? B(pairArr, new LinkedHashMap(ky5.g(pairArr.length))) : l();
    }

    public static Map q(Pair... pairArr) {
        y45.j(pairArr, "pairs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(ky5.g(pairArr.length));
        v(linkedHashMap, pairArr);
        return linkedHashMap;
    }

    public static final Map r(Map map) {
        y45.j(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? map : ky5.j(map);
        }
        return l();
    }

    public static Map s(Map map, Map map2) {
        y45.j(map, "<this>");
        y45.j(map2, "map");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return linkedHashMap;
    }

    public static final void t(Map map, pc9 pc9Var) {
        y45.j(map, "<this>");
        y45.j(pc9Var, "pairs");
        Iterator it = pc9Var.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            map.put(pair.component1(), pair.component2());
        }
    }

    public static void u(Map map, Iterable iterable) {
        y45.j(map, "<this>");
        y45.j(iterable, "pairs");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            map.put(pair.component1(), pair.component2());
        }
    }

    public static final void v(Map map, Pair[] pairArr) {
        y45.j(map, "<this>");
        y45.j(pairArr, "pairs");
        for (Pair pair : pairArr) {
            map.put(pair.component1(), pair.component2());
        }
    }

    public static Map w(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        return r(x(pc9Var, new LinkedHashMap()));
    }

    public static final Map x(pc9 pc9Var, Map map) {
        y45.j(pc9Var, "<this>");
        y45.j(map, "destination");
        t(map, pc9Var);
        return map;
    }

    public static Map y(Iterable iterable) {
        y45.j(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return r(z(iterable, new LinkedHashMap()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return l();
        }
        if (size != 1) {
            return z(iterable, new LinkedHashMap(ky5.g(collection.size())));
        }
        return ky5.h((Pair) (iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next()));
    }

    public static Map z(Iterable iterable, Map map) {
        y45.j(iterable, "<this>");
        y45.j(map, "destination");
        u(map, iterable);
        return map;
    }
}
