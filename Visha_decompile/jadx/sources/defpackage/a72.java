package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class a72 implements irc {
    public static final Map c;
    public final int a;
    public final String b;

    static {
        HashMap map = new HashMap();
        map.put(b("SHA-256", 32, 16, 67, 20, 2), new a72(1, "XMSSMT_SHA2_20/2_256"));
        map.put(b("SHA-256", 32, 16, 67, 20, 4), new a72(2, "XMSSMT_SHA2_20/4_256"));
        map.put(b("SHA-256", 32, 16, 67, 40, 2), new a72(3, "XMSSMT_SHA2_40/2_256"));
        map.put(b("SHA-256", 32, 16, 67, 40, 4), new a72(4, "XMSSMT_SHA2_40/4_256"));
        map.put(b("SHA-256", 32, 16, 67, 40, 8), new a72(5, "XMSSMT_SHA2_40/8_256"));
        map.put(b("SHA-256", 32, 16, 67, 60, 3), new a72(6, "XMSSMT_SHA2_60/3_256"));
        map.put(b("SHA-256", 32, 16, 67, 60, 6), new a72(7, "XMSSMT_SHA2_60/6_256"));
        map.put(b("SHA-256", 32, 16, 67, 60, 12), new a72(8, "XMSSMT_SHA2_60/12_256"));
        map.put(b("SHA-512", 64, 16, 131, 20, 2), new a72(9, "XMSSMT_SHA2_20/2_512"));
        map.put(b("SHA-512", 64, 16, 131, 20, 4), new a72(10, "XMSSMT_SHA2_20/4_512"));
        map.put(b("SHA-512", 64, 16, 131, 40, 2), new a72(11, "XMSSMT_SHA2_40/2_512"));
        map.put(b("SHA-512", 64, 16, 131, 40, 4), new a72(12, "XMSSMT_SHA2_40/4_512"));
        map.put(b("SHA-512", 64, 16, 131, 40, 8), new a72(13, "XMSSMT_SHA2_40/8_512"));
        map.put(b("SHA-512", 64, 16, 131, 60, 3), new a72(14, "XMSSMT_SHA2_60/3_512"));
        map.put(b("SHA-512", 64, 16, 131, 60, 6), new a72(15, "XMSSMT_SHA2_60/6_512"));
        map.put(b("SHA-512", 64, 16, 131, 60, 12), new a72(16, "XMSSMT_SHA2_60/12_512"));
        map.put(b("SHAKE128", 32, 16, 67, 20, 2), new a72(17, "XMSSMT_SHAKE_20/2_256"));
        map.put(b("SHAKE128", 32, 16, 67, 20, 4), new a72(18, "XMSSMT_SHAKE_20/4_256"));
        map.put(b("SHAKE128", 32, 16, 67, 40, 2), new a72(19, "XMSSMT_SHAKE_40/2_256"));
        map.put(b("SHAKE128", 32, 16, 67, 40, 4), new a72(20, "XMSSMT_SHAKE_40/4_256"));
        map.put(b("SHAKE128", 32, 16, 67, 40, 8), new a72(21, "XMSSMT_SHAKE_40/8_256"));
        map.put(b("SHAKE128", 32, 16, 67, 60, 3), new a72(22, "XMSSMT_SHAKE_60/3_256"));
        map.put(b("SHAKE128", 32, 16, 67, 60, 6), new a72(23, "XMSSMT_SHAKE_60/6_256"));
        map.put(b("SHAKE128", 32, 16, 67, 60, 12), new a72(24, "XMSSMT_SHAKE_60/12_256"));
        map.put(b("SHAKE256", 64, 16, 131, 20, 2), new a72(25, "XMSSMT_SHAKE_20/2_512"));
        map.put(b("SHAKE256", 64, 16, 131, 20, 4), new a72(26, "XMSSMT_SHAKE_20/4_512"));
        map.put(b("SHAKE256", 64, 16, 131, 40, 2), new a72(27, "XMSSMT_SHAKE_40/2_512"));
        map.put(b("SHAKE256", 64, 16, 131, 40, 4), new a72(28, "XMSSMT_SHAKE_40/4_512"));
        map.put(b("SHAKE256", 64, 16, 131, 40, 8), new a72(29, "XMSSMT_SHAKE_40/8_512"));
        map.put(b("SHAKE256", 64, 16, 131, 60, 3), new a72(30, "XMSSMT_SHAKE_60/3_512"));
        map.put(b("SHAKE256", 64, 16, 131, 60, 6), new a72(31, "XMSSMT_SHAKE_60/6_512"));
        map.put(b("SHAKE256", 64, 16, 131, 60, 12), new a72(32, "XMSSMT_SHAKE_60/12_512"));
        c = Collections.unmodifiableMap(map);
    }

    public a72(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public static String b(String str, int i, int i2, int i3, int i4, int i5) {
        if (str == null) {
            throw new NullPointerException("algorithmName == null");
        }
        return str + "-" + i + "-" + i2 + "-" + i3 + "-" + i4 + "-" + i5;
    }

    public static a72 c(String str, int i, int i2, int i3, int i4, int i5) {
        if (str != null) {
            return (a72) c.get(b(str, i, i2, i3, i4, i5));
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
