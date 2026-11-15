package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

public final class rda {
    public final Map a = new LinkedHashMap();

    public final Integer a(String str, String str2) {
        y45.j(str, "cardId");
        y45.j(str2, "path");
        Map map = (Map) this.a.get(str);
        if (map != null) {
            return (Integer) map.get(str2);
        }
        return null;
    }

    public final void b(String str, String str2, int i) {
        y45.j(str, "cardId");
        y45.j(str2, "path");
        Map map = this.a;
        Object linkedHashMap = map.get(str);
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
            map.put(str, linkedHashMap);
        }
        ((Map) linkedHashMap).put(str2, Integer.valueOf(i));
    }
}
