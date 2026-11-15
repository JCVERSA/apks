package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.internal.a0;
import kotlinx.coroutines.internal.c0;

public abstract class g {

    public static final String f64971a = a0.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    public static final long f64972b = c0.f("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);

    public static final int f64973c = c0.e("kotlinx.coroutines.scheduler.core.pool.size", RangesKt.e(a0.a(), 2), 1, 0, 8, null);

    public static final int f64974d = c0.e("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4, null);

    public static final long f64975e = TimeUnit.SECONDS.toNanos(c0.f("kotlinx.coroutines.scheduler.keep.alive.sec", 60, 0, 0, 12, null));

    public static f f64976f = d.f64965a;

    public static final Task b(Runnable runnable, long j10, boolean z10) {
        return new TaskImpl(runnable, j10, z10);
    }

    public static final String c(boolean z10) {
        return z10 ? "Blocking" : "Non-blocking";
    }
}
