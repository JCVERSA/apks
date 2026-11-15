package defpackage;

import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.c;

public abstract class yd3 extends c {
    private boolean shared;
    private hg unconfinedQueue;
    private long useCount;

    public static void decrementUseCount$default(yd3 yd3Var, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        yd3Var.decrementUseCount(z);
    }

    public static void incrementUseCount$default(yd3 yd3Var, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        yd3Var.incrementUseCount(z);
    }

    public final long a(boolean z) {
        return z ? 4294967296L : 1L;
    }

    public final void decrementUseCount(boolean z) {
        long jA = this.useCount - a(z);
        this.useCount = jA;
        if (jA <= 0 && this.shared) {
            shutdown();
        }
    }

    public final void dispatchUnconfined(DispatchedTask<?> dispatchedTask) {
        hg hgVar = this.unconfinedQueue;
        if (hgVar == null) {
            hgVar = new hg();
            this.unconfinedQueue = hgVar;
        }
        hgVar.addLast(dispatchedTask);
    }

    public long getNextTime() {
        hg hgVar = this.unconfinedQueue;
        return (hgVar == null || hgVar.isEmpty()) ? Long.MAX_VALUE : 0L;
    }

    public final void incrementUseCount(boolean z) {
        this.useCount += a(z);
        if (z) {
            return;
        }
        this.shared = true;
    }

    public final boolean isActive() {
        return this.useCount > 0;
    }

    public final boolean isUnconfinedLoopActive() {
        return this.useCount >= a(true);
    }

    public final boolean isUnconfinedQueueEmpty() {
        hg hgVar = this.unconfinedQueue;
        if (hgVar != null) {
            return hgVar.isEmpty();
        }
        return true;
    }

    @Override
    public final c limitedParallelism(int i, String str) {
        bl5.a(i);
        return bl5.b(this, str);
    }

    public abstract long processNextEvent();

    public final boolean processUnconfinedEvent() {
        DispatchedTask dispatchedTask;
        hg hgVar = this.unconfinedQueue;
        if (hgVar == null || (dispatchedTask = (DispatchedTask) hgVar.q()) == null) {
            return false;
        }
        dispatchedTask.run();
        return true;
    }

    public boolean shouldBeProcessedFromContext() {
        return false;
    }

    public abstract void shutdown();
}
