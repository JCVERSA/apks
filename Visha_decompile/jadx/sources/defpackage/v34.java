package defpackage;

import android.os.SystemClock;
import android.util.Log;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiFunction;

public abstract class v34 {
    public static final AtomicLong a = new AtomicLong(0);
    public static final AtomicLong b = new AtomicLong(0);
    public static final ConcurrentHashMap c = new ConcurrentHashMap();

    public static final class a {
        public final AtomicInteger a;
        public volatile long b;

        public a() {
            this.a = new AtomicInteger(0);
            this.b = 0L;
        }
    }

    public static void c(final String str, long j) {
        if (str == null || str.isEmpty()) {
            return;
        }
        final long jElapsedRealtime = j > 0 ? SystemClock.elapsedRealtime() + j : Long.MAX_VALUE;
        c.compute(str, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return v34.f(jElapsedRealtime, str, (String) obj, (v34.a) obj2);
            }
        });
    }

    public static void d(final String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        c.computeIfPresent(str, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return v34.g(str, (String) obj, (v34.a) obj2);
            }
        });
    }

    public static boolean e() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        for (String str : c.keySet()) {
            ConcurrentHashMap concurrentHashMap = c;
            a aVar = (a) concurrentHashMap.get(str);
            if (aVar != null) {
                int i = aVar.a.get();
                if (i <= 0) {
                    concurrentHashMap.remove(str, aVar);
                } else {
                    if (jElapsedRealtime < aVar.b) {
                        return true;
                    }
                    Log.w("mediation_ad_FgInterstitialGuard", "flow expired, auto release. key=" + str + " count=" + i);
                    concurrentHashMap.remove(str, aVar);
                }
            }
        }
        return false;
    }

    public static a f(long j, String str, String str2, a aVar) {
        if (aVar == null) {
            aVar = new a();
        }
        int iIncrementAndGet = aVar.a.incrementAndGet();
        if (aVar.b < j) {
            aVar.b = j;
        }
        Log.d("mediation_ad_FgInterstitialGuard", "beginFlow key=" + str + " count=" + iIncrementAndGet + " expiresAt=" + aVar.b);
        return aVar;
    }

    public static a g(String str, String str2, a aVar) {
        int iDecrementAndGet = aVar.a.decrementAndGet();
        Log.d("mediation_ad_FgInterstitialGuard", "endFlow key=" + str + " count=" + iDecrementAndGet);
        if (iDecrementAndGet <= 0) {
            return null;
        }
        return aVar;
    }

    public static boolean h() {
        return e() || SystemClock.elapsedRealtime() < a.get() || b.getAndSet(0L) > 0;
    }

    public static void i() {
        b.set(SystemClock.elapsedRealtime());
    }
}
