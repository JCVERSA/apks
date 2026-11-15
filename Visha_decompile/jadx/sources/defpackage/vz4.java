package defpackage;

import androidx.collection.LruCache;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.InfoItem;

public final class vz4 {
    public static final vz4 b = new vz4();
    public static final LruCache c = new LruCache(60);
    public final String a = vz4.class.getSimpleName();

    public static final class a {
        public final long a;
        public final Info b;

        public final boolean c() {
            return System.currentTimeMillis() > this.a;
        }

        public a(Info info, long j) {
            this.a = System.currentTimeMillis() + j;
            this.b = info;
        }
    }

    public static Info c(String str) {
        LruCache lruCache = c;
        a aVar = (a) lruCache.get(str);
        if (aVar == null) {
            return null;
        }
        if (!aVar.c()) {
            return aVar.b;
        }
        lruCache.remove(str);
        return null;
    }

    public static vz4 d() {
        return b;
    }

    public static String e(int i, String str, InfoItem.InfoType infoType) {
        return i + str + infoType.toString();
    }

    public static void h() {
        for (Map.Entry entry : c.snapshot().entrySet()) {
            a aVar = (a) entry.getValue();
            if (aVar != null && aVar.c()) {
                c.remove((String) entry.getKey());
            }
        }
    }

    public void a() {
        LruCache lruCache = c;
        synchronized (lruCache) {
            lruCache.evictAll();
        }
    }

    public Info b(int i, String str, InfoItem.InfoType infoType) {
        Info infoC;
        synchronized (c) {
            infoC = c(e(i, str, infoType));
        }
        return infoC;
    }

    public void f(int i, String str, Info info, InfoItem.InfoType infoType) {
        long jConvert = TimeUnit.MILLISECONDS.convert(1L, TimeUnit.HOURS);
        LruCache lruCache = c;
        synchronized (lruCache) {
            lruCache.put(e(i, str, infoType), new a(info, jConvert));
        }
    }

    public void g(int i, String str, InfoItem.InfoType infoType) {
        LruCache lruCache = c;
        synchronized (lruCache) {
            lruCache.remove(e(i, str, infoType));
        }
    }

    public void i() {
        LruCache lruCache = c;
        synchronized (lruCache) {
            h();
            lruCache.trimToSize(30);
        }
    }
}
