package com.mbridge.msdk.foundation.same.buffer;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;

public class a {

    private final LinkedHashMap<String, JSONObject> f34525a;

    private final int f34526b;

    private int f34527c;

    public a(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f34526b = i10;
        this.f34525a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int b(String str, JSONObject jSONObject) {
        return 1;
    }

    public final boolean a(String str, JSONObject jSONObject) {
        if (str == null || jSONObject == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.f34527c += b(str, jSONObject);
                JSONObject jSONObjectPut = this.f34525a.put(str, jSONObject);
                if (jSONObjectPut != null) {
                    this.f34527c -= b(str, jSONObjectPut);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        a(this.f34526b);
        return true;
    }

    public final synchronized String toString() {
        return String.format("LruCache[maxSize=%d]", Integer.valueOf(this.f34526b));
    }

    public final JSONObject a(String str) {
        JSONObject jSONObject;
        if (str != null) {
            synchronized (this) {
                jSONObject = this.f34525a.get(str);
            }
            return jSONObject;
        }
        throw new NullPointerException("key == null");
    }

    public Collection<String> a() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.f34525a.keySet());
        }
        return hashSet;
    }

    private void a(int i10) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.f34527c < 0 || (this.f34525a.isEmpty() && this.f34527c != 0)) {
                        break;
                    }
                    if (this.f34527c > i10 && !this.f34525a.isEmpty()) {
                        Map.Entry<String, JSONObject> next = this.f34525a.entrySet().iterator().next();
                        if (next == null) {
                            return;
                        }
                        String key = next.getKey();
                        try {
                            int iB = b(key, next.getValue());
                            this.f34525a.remove(key);
                            this.f34527c -= iB;
                        } catch (Throwable unused) {
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }
}
