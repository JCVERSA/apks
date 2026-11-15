package androidx.compose.runtime;

import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;

public abstract class x1 {

    private static final Object f3756a = new Object();

    private static final Object f3757b = new Object();

    public static final Object a(Map map, Object obj) {
        List list = (List) map.get(obj);
        if (list == null) {
            return null;
        }
        Object objJ = CollectionsKt.J(list);
        if (!list.isEmpty()) {
            return objJ;
        }
        map.remove(obj);
        return objJ;
    }
}
