package com.google.android.exoplayer2.upstream.cache;

import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class o implements m {

    public static final o f26608c = new o(Collections.emptyMap());

    private int f26609a;

    private final Map f26610b;

    public o() {
        this(Collections.emptyMap());
    }

    private static void a(HashMap map, Map map2) {
        for (Map.Entry entry : map2.entrySet()) {
            map.put((String) entry.getKey(), e(entry.getValue()));
        }
    }

    private static Map b(Map map, n nVar) {
        HashMap map2 = new HashMap(map);
        g(map2, nVar.c());
        a(map2, nVar.b());
        return map2;
    }

    private static byte[] e(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(com.google.common.base.c.f29403c);
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    private static boolean f(Map map, Map map2) {
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

    private static void g(HashMap map, List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            map.remove(list.get(i10));
        }
    }

    public o c(n nVar) {
        Map mapB = b(this.f26610b, nVar);
        return f(this.f26610b, mapB) ? this : new o(mapB);
    }

    public Set d() {
        return this.f26610b.entrySet();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        return f(this.f26610b, ((o) obj).f26610b);
    }

    @Override
    public final String get(String str, String str2) {
        byte[] bArr = (byte[]) this.f26610b.get(str);
        return bArr != null ? new String(bArr, com.google.common.base.c.f29403c) : str2;
    }

    public int hashCode() {
        if (this.f26609a == 0) {
            int iHashCode = 0;
            for (Map.Entry entry : this.f26610b.entrySet()) {
                iHashCode += Arrays.hashCode((byte[]) entry.getValue()) ^ ((String) entry.getKey()).hashCode();
            }
            this.f26609a = iHashCode;
        }
        return this.f26609a;
    }

    public o(Map map) {
        this.f26610b = Collections.unmodifiableMap(map);
    }

    @Override
    public final long get(String str, long j10) {
        byte[] bArr = (byte[]) this.f26610b.get(str);
        return bArr != null ? ByteBuffer.wrap(bArr).getLong() : j10;
    }
}
