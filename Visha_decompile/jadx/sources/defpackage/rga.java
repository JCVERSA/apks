package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

public final class rga {
    public final Map a = new LinkedHashMap();

    public final void a() {
        this.a.clear();
    }

    public final String b(String str, String str2) {
        String str3;
        y45.j(str, "cardId");
        y45.j(str2, "path");
        synchronized (this.a) {
            Map map = (Map) this.a.get(str);
            str3 = map != null ? (String) map.get(str2) : null;
        }
        return str3;
    }

    public final void c(String str, String str2) {
        y45.j(str, "cardId");
        y45.j(str2, "stateId");
        d(str, "/", str2);
    }

    public final void d(String str, String str2, String str3) {
        y45.j(str, "cardId");
        y45.j(str2, "path");
        y45.j(str3, "stateId");
        synchronized (this.a) {
            try {
                Map map = this.a;
                Object linkedHashMap = map.get(str);
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap();
                    map.put(str, linkedHashMap);
                }
                ((Map) linkedHashMap).put(str2, str3);
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Map e(String str) {
        Map map;
        y45.j(str, "cardId");
        synchronized (this.a) {
            map = (Map) this.a.remove(str);
        }
        return map;
    }
}
