package kotlinx.coroutines.scheduling;

import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import defpackage.j29;
import defpackage.ky6;
import defpackage.naa;
import defpackage.paa;
import defpackage.wn8;
import java.util.concurrent.TimeUnit;

public abstract class a {
    public static final String a = naa.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");
    public static final long b = paa.f("kotlinx.coroutines.scheduler.resolution.ns", SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US, 0, 0, 12, null);
    public static final int c = paa.e("kotlinx.coroutines.scheduler.core.pool.size", wn8.d(naa.a(), 2), 1, 0, 8, null);
    public static final int d = paa.e("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4, null);
    public static final long e = TimeUnit.SECONDS.toNanos(paa.f("kotlinx.coroutines.scheduler.keep.alive.sec", 60, 0, 0, 12, null));
    public static j29 f = ky6.a;

    public static final Task b(Runnable runnable, long j, boolean z) {
        return new TaskImpl(runnable, j, z);
    }

    public static final String c(boolean z) {
        return z ? "Blocking" : "Non-blocking";
    }
}
