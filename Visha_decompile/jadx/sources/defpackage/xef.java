package defpackage;

import com.google.android.gms.internal.ads.e8;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class xef extends e8 {
    public final Executor b;

    public xef(Executor executor, yef yefVar) {
        this.b = executor;
    }

    @Override
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void execute(Runnable runnable) {
        this.b.execute(runnable);
    }

    @Override
    public final boolean isShutdown() {
        return false;
    }

    @Override
    public final boolean isTerminated() {
        return false;
    }

    @Override
    public final void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final List shutdownNow() {
        throw new UnsupportedOperationException();
    }
}
