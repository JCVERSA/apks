package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class b72 implements irc {
    public static final Map c;
    public final int a;
    public final String b;

    static {
        HashMap map = new HashMap();
        map.put(b("SHA-256", 32, 16, 67, 10), new b72(1, "XMSS_SHA2_10_256"));
        map.put(b("SHA-256", 32, 16, 67, 16), new b72(2, "XMSS_SHA2_16_256"));
        map.put(b("SHA-256", 32, 16, 67, 20), new b72(3, "XMSS_SHA2_20_256"));
        map.put(b("SHA-512", 64, 16, 131, 10), new b72(4, "XMSS_SHA2_10_512"));
        map.put(b("SHA-512", 64, 16, 131, 16), new b72(5, "XMSS_SHA2_16_512"));
        map.put(b("SHA-512", 64, 16, 131, 20), new b72(6, "XMSS_SHA2_20_512"));
        map.put(b("SHAKE128", 32, 16, 67, 10), new b72(7, "XMSS_SHAKE_10_256"));
        map.put(b("SHAKE128", 32, 16, 67, 16), new b72(8, "XMSS_SHAKE_16_256"));
        map.put(b("SHAKE128", 32, 16, 67, 20), new b72(9, "XMSS_SHAKE_20_256"));
        map.put(b("SHAKE256", 64, 16, 131, 10), new b72(10, "XMSS_SHAKE_10_512"));
        map.put(b("SHAKE256", 64, 16, 131, 16), new b72(11, "XMSS_SHAKE_16_512"));
        map.put(b("SHAKE256", 64, 16, 131, 20), new b72(12, "XMSS_SHAKE_20_512"));
        c = Collections.unmodifiableMap(map);
    }

    public b72(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public static String b(String str, int i, int i2, int i3, int i4) {
        if (str == null) {
            throw new NullPointerException("algorithmName == null");
        }
        return str + "-" + i + "-" + i2 + "-" + i3 + "-" + i4;
    }

    public static b72 c(String str, int i, int i2, int i3, int i4) {
        if (str != null) {
            return (b72) c.get(b(str, i, i2, i3, i4));
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
