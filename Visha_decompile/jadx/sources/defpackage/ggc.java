package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class ggc implements irc {
    public static final Map c;
    public final int a;
    public final String b;

    static {
        HashMap map = new HashMap();
        map.put(b("SHA-256", 32, 16, 67), new ggc(16777217, "WOTSP_SHA2-256_W16"));
        map.put(b("SHA-512", 64, 16, 131), new ggc(33554434, "WOTSP_SHA2-512_W16"));
        map.put(b("SHAKE128", 32, 16, 67), new ggc(50331651, "WOTSP_SHAKE128_W16"));
        map.put(b("SHAKE256", 64, 16, 131), new ggc(67108868, "WOTSP_SHAKE256_W16"));
        c = Collections.unmodifiableMap(map);
    }

    public ggc(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public static String b(String str, int i, int i2, int i3) {
        if (str == null) {
            throw new NullPointerException("algorithmName == null");
        }
        return str + "-" + i + "-" + i2 + "-" + i3;
    }

    public static ggc c(String str, int i, int i2, int i3) {
        if (str != null) {
            return (ggc) c.get(b(str, i, i2, i3));
        }
        throw new NullPointerException("algorithmName == null");
    }

    @Override
    public int a() {
        return this.a;
    }

    public String toString() {
        return this.b;
    }
}
