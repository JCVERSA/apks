package defpackage;

import androidx.collection.LruCache;
import java.util.HashMap;
import java.util.Map;

public final class wp0 {
    public static final Map c = new HashMap();
    public final String a;
    public final LruCache b;

    public wp0(String str, LruCache lruCache) {
        this.a = str;
        this.b = lruCache;
    }

    public static wp0 a() {
        return b(256);
    }

    public static wp0 b(int i) {
        return c(String.valueOf(i), i);
    }

    public static wp0 c(String str, int i) {
        Map map = c;
        wp0 wp0Var = (wp0) map.get(str);
        if (wp0Var == null) {
            synchronized (wp0.class) {
                try {
                    wp0Var = (wp0) map.get(str);
                    if (wp0Var == null) {
                        wp0Var = new wp0(str, new LruCache(i));
                        map.put(str, wp0Var);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return wp0Var;
    }

    public Object d(String str) {
        ubc.a(this.b.remove(str));
        return null;
    }

    public String toString() {
        return this.a + "@" + Integer.toHexString(hashCode());
    }
}
