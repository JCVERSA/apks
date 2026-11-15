package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
import kotlin.Pair;
import kotlin.collections.a;
import kotlin.collections.builders.MapBuilder;

public abstract class ky5 extends jy5 {
    public static Map d(Map map) {
        y45.j(map, "builder");
        return ((MapBuilder) map).build();
    }

    public static Map e() {
        return new MapBuilder();
    }

    public static Map f(int i) {
        return new MapBuilder(i);
    }

    public static int g(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map h(Pair pair) {
        y45.j(pair, "pair");
        Map mapSingletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        y45.i(mapSingletonMap, "singletonMap(...)");
        return mapSingletonMap;
    }

    public static SortedMap i(Pair... pairArr) {
        y45.j(pairArr, "pairs");
        TreeMap treeMap = new TreeMap();
        a.v(treeMap, pairArr);
        return treeMap;
    }

    public static final Map j(Map map) {
        y45.j(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        y45.i(mapSingletonMap, "with(...)");
        return mapSingletonMap;
    }

    public static SortedMap k(Map map, Comparator comparator) {
        y45.j(map, "<this>");
        y45.j(comparator, "comparator");
        TreeMap treeMap = new TreeMap(comparator);
        treeMap.putAll(map);
        return treeMap;
    }
}
