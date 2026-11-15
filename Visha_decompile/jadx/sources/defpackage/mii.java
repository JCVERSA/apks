package defpackage;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

public final class mii {
    public static final mii b = new mii();
    public final Map a = new HashMap();

    public static mii b() {
        return b;
    }

    public final synchronized p9i a(String str) {
        Map map;
        map = this.a;
        if (!map.containsKey("AES128_GCM")) {
            throw new GeneralSecurityException("Name AES128_GCM does not exist");
        }
        return (p9i) map.get("AES128_GCM");
    }

    public final synchronized void c(String str, p9i p9iVar) {
        try {
            Map map = this.a;
            if (!map.containsKey(str)) {
                map.put(str, p9iVar);
                return;
            }
            if (((p9i) map.get(str)).equals(p9iVar)) {
                return;
            }
            throw new GeneralSecurityException("Parameters object with name " + str + " already exists (" + String.valueOf(map.get(str)) + "), cannot insert " + String.valueOf(p9iVar));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            c((String) entry.getKey(), (p9i) entry.getValue());
        }
    }
}
