package com.therouter.history;

import com.therouter.TheRouterThreadPool;
import com.therouter.inject.RecyclerLruCache;
import java.util.WeakHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

public abstract class HistoryRecorder {

    private static long f39764a = 0;

    private static int f39765b = 30;

    private static final RecyclerLruCache f39766c;

    private static final WeakHashMap f39767d;

    static {
        RecyclerLruCache recyclerLruCache = new RecyclerLruCache(f39765b);
        recyclerLruCache.a(new Function3<String, d, d, Unit>() {
            @Override
            public Object invoke(Object obj, Object obj2, Object obj3) {
                invoke((String) obj, (d) obj2, (d) obj3);
                return Unit.f64096a;
            }

            public final void invoke(String str, d dVar, d dVar2) {
                HistoryRecorder.f39767d.put(str, dVar);
            }
        });
        f39766c = recyclerLruCache;
        f39767d = new WeakHashMap();
    }

    public static final boolean c(final d event) {
        Intrinsics.h(event, "event");
        return TheRouterThreadPool.g(new Runnable() {
            @Override
            public final void run() {
                HistoryRecorder.d(event);
            }
        });
    }

    public static final void d(d event) {
        Intrinsics.h(event, "$event");
        RecyclerLruCache recyclerLruCache = f39766c;
        long j10 = f39764a;
        f39764a = 1 + j10;
        recyclerLruCache.put(String.valueOf(j10), event);
    }
}
