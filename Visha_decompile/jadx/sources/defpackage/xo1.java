package defpackage;

import android.os.Process;
import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

public class xo1 implements ThreadFactory {
    public static final ThreadFactory f = Executors.defaultThreadFactory();
    public final AtomicLong b = new AtomicLong();
    public final String c;
    public final int d;
    public final StrictMode.ThreadPolicy e;

    public xo1(String str, int i, StrictMode.ThreadPolicy threadPolicy) {
        this.c = str;
        this.d = i;
        this.e = threadPolicy;
    }

    public final void b(Runnable runnable) {
        Process.setThreadPriority(this.d);
        StrictMode.ThreadPolicy threadPolicy = this.e;
        if (threadPolicy != null) {
            StrictMode.setThreadPolicy(threadPolicy);
        }
        runnable.run();
    }

    @Override
    public Thread newThread(final Runnable runnable) {
        Thread threadNewThread = f.newThread(new Runnable() {
            @Override
            public final void run() {
                this.b.b(runnable);
            }
        });
        threadNewThread.setName(String.format(Locale.ROOT, "%s Thread #%d", this.c, Long.valueOf(this.b.getAndIncrement())));
        return threadNewThread;
    }
}
