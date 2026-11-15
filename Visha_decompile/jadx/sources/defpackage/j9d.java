package defpackage;

import androidx.core.app.NotificationCompat;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

public final class j9d {
    public static final j9d a = new j9d();
    public static final AtomicLong b = new AtomicLong(0);
    public static final ConcurrentHashMap c = new ConcurrentHashMap();

    public final long a() {
        return b.incrementAndGet();
    }

    public final long b(wh5 wh5Var) {
        y45.j(wh5Var, "observer");
        long jA = a();
        if (ikd.c()) {
            ikd.b().d("Rewarded", "registerObserver " + jA);
        }
        c.put(Long.valueOf(jA), wh5Var);
        return jA;
    }

    public final void c(long j) {
        if (ikd.c()) {
            ikd.b().d("Rewarded", "unregisterObserver " + j);
        }
        try {
            c.remove(Long.valueOf(j));
        } catch (Exception e) {
            ikd.b().w("Rewarded", "Failed to unregister observer: " + e.getMessage(), e);
        }
    }

    public final void d(long j, String str, Object obj) {
        y45.j(str, NotificationCompat.CATEGORY_EVENT);
        if (ikd.c()) {
            ikd.b().d("Rewarded", "broadcast " + j + ", " + str);
        }
        try {
            wh5 wh5Var = (wh5) c.get(Long.valueOf(j));
            if (wh5Var != null) {
                wh5Var.a(j, str, obj);
            }
        } catch (Exception e) {
            ikd.b().e("Rewarded", "Error in observer.onEvent: " + e.getMessage());
        }
    }
}
