package defpackage;

import java.util.concurrent.ConcurrentHashMap;

public final class kwf {
    public final Object a = new Object();
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final ConcurrentHashMap c = new ConcurrentHashMap();
    public final ConcurrentHashMap d = new ConcurrentHashMap();

    public final int a(String str) {
        Integer num = (Integer) this.b.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public final long b(String str) {
        Long l = (Long) this.d.get(str);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    public final void c(String str) {
        synchronized (this.a) {
            try {
                ConcurrentHashMap concurrentHashMap = this.b;
                Integer num = (Integer) concurrentHashMap.get(str);
                concurrentHashMap.put(str, num == null ? 1 : Integer.valueOf(num.intValue() + 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(String str, String str2, long j) {
        ConcurrentHashMap concurrentHashMap = this.c;
        Long l = (Long) concurrentHashMap.get(str2);
        if (l == null) {
            return;
        }
        concurrentHashMap.remove(str2);
        this.d.put(str, Long.valueOf(j - l.longValue()));
    }

    public final void e(String str, long j) {
        this.c.put(str, Long.valueOf(j));
    }
}
