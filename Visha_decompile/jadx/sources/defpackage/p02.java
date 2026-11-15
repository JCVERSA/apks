package defpackage;

import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class p02 implements yg1 {
    public static final p02 c = new p02(Collections.emptyMap());
    public int a;
    public final Map b;

    public p02(Map map) {
        this.b = Collections.unmodifiableMap(map);
    }

    public static void c(HashMap map, Map map2) {
        for (Map.Entry entry : map2.entrySet()) {
            map.put((String) entry.getKey(), g(entry.getValue()));
        }
    }

    public static Map d(Map map, zg1 zg1Var) {
        HashMap map2 = new HashMap(map);
        i(map2, zg1Var.c());
        c(map2, zg1Var.b());
        return map2;
    }

    public static byte[] g(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(rv0.c);
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    public static boolean h(Map map, Map map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!Arrays.equals((byte[]) entry.getValue(), (byte[]) map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public static void i(HashMap map, List list) {
        for (int i = 0; i < list.size(); i++) {
            map.remove(list.get(i));
        }
    }

    public p02 e(zg1 zg1Var) {
        Map mapD = d(this.b, zg1Var);
        return h(this.b, mapD) ? this : new p02(mapD);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p02.class != obj.getClass()) {
            return false;
        }
        return h(this.b, ((p02) obj).b);
    }

    public Set f() {
        return this.b.entrySet();
    }

    @Override
    public final String get(String str, String str2) {
        byte[] bArr = (byte[]) this.b.get(str);
        return bArr != null ? new String(bArr, rv0.c) : str2;
    }

    public int hashCode() {
        if (this.a == 0) {
            int iHashCode = 0;
            for (Map.Entry entry : this.b.entrySet()) {
                iHashCode += Arrays.hashCode((byte[]) entry.getValue()) ^ ((String) entry.getKey()).hashCode();
            }
            this.a = iHashCode;
        }
        return this.a;
    }

    @Override
    public final long get(String str, long j) {
        byte[] bArr = (byte[]) this.b.get(str);
        return bArr != null ? ByteBuffer.wrap(bArr).getLong() : j;
    }
}
