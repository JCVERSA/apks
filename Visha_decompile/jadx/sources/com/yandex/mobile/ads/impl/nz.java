package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.datasource.cache.ContentMetadata;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class nz {
    public static final nz c = new nz(Collections.emptyMap());
    private int a;
    private final Map<String, byte[]> b;

    public nz() {
        this(Collections.emptyMap());
    }

    public final nz a(es esVar) {
        byte[] bytes;
        HashMap map = new HashMap(this.b);
        List<String> listB = esVar.b();
        for (int i = 0; i < listB.size(); i++) {
            map.remove(listB.get(i));
        }
        for (Map.Entry<String, Object> entry : esVar.a().entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Long) {
                bytes = ByteBuffer.allocate(8).putLong(((Long) value).longValue()).array();
            } else if (value instanceof String) {
                bytes = ((String) value).getBytes(lo.c);
            } else {
                if (!(value instanceof byte[])) {
                    throw new IllegalArgumentException();
                }
                bytes = (byte[]) value;
            }
            map.put(key, bytes);
        }
        Map<String, byte[]> map2 = this.b;
        if (map2.size() == map.size()) {
            for (Map.Entry<String, byte[]> entry2 : map2.entrySet()) {
                if (!Arrays.equals(entry2.getValue(), (byte[]) map.get(entry2.getKey()))) {
                }
            }
            return this;
        }
        return new nz(map);
    }

    public final long b() {
        byte[] bArr = this.b.get(ContentMetadata.KEY_CONTENT_LENGTH);
        if (bArr != null) {
            return ByteBuffer.wrap(bArr).getLong();
        }
        return -1L;
    }

    @Nullable
    public final String c() {
        byte[] bArr = this.b.get(ContentMetadata.KEY_REDIRECTED_URI);
        if (bArr != null) {
            return new String(bArr, lo.c);
        }
        return null;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || nz.class != obj.getClass()) {
            return false;
        }
        Map<String, byte[]> map = this.b;
        Map<String, byte[]> map2 = ((nz) obj).b;
        if (map.size() == map2.size()) {
            for (Map.Entry<String, byte[]> entry : map.entrySet()) {
                if (!Arrays.equals(entry.getValue(), map2.get(entry.getKey()))) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (this.a == 0) {
            int iHashCode = 0;
            for (Map.Entry<String, byte[]> entry : this.b.entrySet()) {
                iHashCode += Arrays.hashCode(entry.getValue()) ^ entry.getKey().hashCode();
            }
            this.a = iHashCode;
        }
        return this.a;
    }

    public nz(Map<String, byte[]> map) {
        this.b = Collections.unmodifiableMap(map);
    }

    public final Set<Map.Entry<String, byte[]>> a() {
        return this.b.entrySet();
    }
}
