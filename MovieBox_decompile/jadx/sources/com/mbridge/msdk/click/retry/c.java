package com.mbridge.msdk.click.retry;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;

public class c {

    private final LinkedHashMap<String, b> f33609a;

    private final int f33610b;

    private int f33611c;

    public c(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f33610b = i10;
        this.f33609a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int b(String str, b bVar) {
        return 1;
    }

    public final b a(String str) {
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                b bVar = this.f33609a.get(str);
                if (bVar != null) {
                    return bVar;
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final synchronized String toString() {
        return String.format("LruCache[maxSize=%d]", Integer.valueOf(this.f33610b));
    }

    public final void b(String str) {
        if (str == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                b bVarRemove = this.f33609a.remove(str);
                if (bVarRemove != null) {
                    this.f33611c -= b(str, bVarRemove);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean a(String str, b bVar) {
        if (str != null && bVar != null) {
            synchronized (this) {
                try {
                    this.f33611c += b(str, bVar);
                    b bVarPut = this.f33609a.put(str, bVar);
                    if (bVarPut != null) {
                        this.f33611c -= b(str, bVarPut);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            a(this.f33610b);
            return true;
        }
        throw new NullPointerException("key == null || value == null");
    }

    private void a(int i10) {
        while (true) {
            synchronized (this) {
                try {
                    if (this.f33611c < 0 || (this.f33609a.isEmpty() && this.f33611c != 0)) {
                        break;
                    }
                    if (this.f33611c > i10 && !this.f33609a.isEmpty()) {
                        Map.Entry<String, b> next = this.f33609a.entrySet().iterator().next();
                        if (next == null) {
                            return;
                        }
                        String key = next.getKey();
                        try {
                            int iB = b(key, next.getValue());
                            this.f33609a.remove(key);
                            this.f33611c -= iB;
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

    public Collection<String> a() {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.f33609a.keySet());
        }
        return hashSet;
    }
}
