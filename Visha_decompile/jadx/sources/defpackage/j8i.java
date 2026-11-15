package defpackage;

import com.google.android.gms.internal.ads.e8;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public class j8i extends e8 {
    public final ExecutorService b;

    public j8i(ExecutorService executorService) {
        executorService.getClass();
        this.b = executorService;
    }

    @Override
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.b.awaitTermination(j, timeUnit);
    }

    @Override
    public final void execute(Runnable runnable) {
        this.b.execute(runnable);
    }

    @Override
    public final boolean isShutdown() {
        return this.b.isShutdown();
    }

    @Override
    public final boolean isTerminated() {
        return this.b.isTerminated();
    }

    @Override
    public final void shutdown() {
        this.b.shutdown();
    }

    @Override
    public final List shutdownNow() {
        return this.b.shutdownNow();
    }

    public final String toString() {
        ExecutorService executorService = this.b;
        return super.toString() + "[" + String.valueOf(executorService) + "]";
    }
}
