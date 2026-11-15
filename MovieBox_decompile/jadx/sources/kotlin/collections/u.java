package kotlin.collections;

import java.util.Collections;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.internal.Intrinsics;

public class u extends t {
    public static Map b(Map builder) {
        Intrinsics.h(builder, "builder");
        return ((MapBuilder) builder).build();
    }

    public static Map c() {
        return new MapBuilder();
    }

    public static Map d(int i10) {
        return new MapBuilder(i10);
    }

    public static int e(int i10) {
        if (i10 < 0) {
            return i10;
        }
        if (i10 < 3) {
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map f(Pair pair) {
        Intrinsics.h(pair, "pair");
        Map mapSingletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        Intrinsics.g(mapSingletonMap, "singletonMap(...)");
        return mapSingletonMap;
    }

    public static final Map g(Map map) {
        Intrinsics.h(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        Intrinsics.g(mapSingletonMap, "with(...)");
        return mapSingletonMap;
    }
}
