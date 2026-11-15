package com.cloud.hisavana.sdk;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.jvm.internal.Intrinsics;

public final class r1 {

    public static final r1 f22231a = new r1();

    private static final AtomicLong f22232b = new AtomicLong(0);

    private static final ConcurrentHashMap f22233c = new ConcurrentHashMap();

    private r1() {
    }

    private final long a() {
        return f22232b.incrementAndGet();
    }

    public final long b(a observer) {
        Intrinsics.h(observer, "observer");
        long jA = a();
        if (b4.c()) {
            b4.b().d("Rewarded", "registerObserver " + jA);
        }
        f22233c.put(Long.valueOf(jA), observer);
        return jA;
    }

    public final void c(long j10) {
        if (b4.c()) {
            b4.b().d("Rewarded", "unregisterObserver " + j10);
        }
        try {
            f22233c.remove(Long.valueOf(j10));
        } catch (Exception e10) {
            b4.b().w("Rewarded", "Failed to unregister observer: " + e10.getMessage(), e10);
        }
    }

    public final void d(long j10, String event, Object obj) {
        Intrinsics.h(event, "event");
        if (b4.c()) {
            b4.b().d("Rewarded", "broadcast " + j10 + ", " + event);
        }
        try {
            a aVar = (a) f22233c.get(Long.valueOf(j10));
            if (aVar != null) {
                aVar.a(j10, event, obj);
            }
        } catch (Exception e10) {
            b4.b().e("Rewarded", "Error in observer.onEvent: " + e10.getMessage());
        }
    }
}
