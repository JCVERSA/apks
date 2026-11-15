package kotlinx.coroutines;

import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.collections.ArrayDeque;

public abstract class e1 extends i0 {
    private boolean shared;
    private ArrayDeque<DispatchedTask<?>> unconfinedQueue;
    private long useCount;

    public static void decrementUseCount$default(e1 e1Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        e1Var.decrementUseCount(z10);
    }

    public static void incrementUseCount$default(e1 e1Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        e1Var.incrementUseCount(z10);
    }

    private final long p(boolean z10) {
        if (z10) {
            return TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE;
        }
        return 1L;
    }

    public final void decrementUseCount(boolean z10) {
        long jP = this.useCount - p(z10);
        this.useCount = jP;
        if (jP <= 0 && this.shared) {
            shutdown();
        }
    }

    public final void dispatchUnconfined(DispatchedTask<?> dispatchedTask) {
        ArrayDeque<DispatchedTask<?>> arrayDeque = this.unconfinedQueue;
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque<>();
            this.unconfinedQueue = arrayDeque;
        }
        arrayDeque.addLast(dispatchedTask);
    }

    protected long getNextTime() {
        ArrayDeque<DispatchedTask<?>> arrayDeque = this.unconfinedQueue;
        return (arrayDeque == null || arrayDeque.isEmpty()) ? Long.MAX_VALUE : 0L;
    }

    public final void incrementUseCount(boolean z10) {
        this.useCount += p(z10);
        if (z10) {
            return;
        }
        this.shared = true;
    }

    public final boolean isActive() {
        return this.useCount > 0;
    }

    public final boolean isUnconfinedLoopActive() {
        return this.useCount >= p(true);
    }

    public final boolean isUnconfinedQueueEmpty() {
        ArrayDeque<DispatchedTask<?>> arrayDeque = this.unconfinedQueue;
        if (arrayDeque != null) {
            return arrayDeque.isEmpty();
        }
        return true;
    }

    @Override
    public final i0 limitedParallelism(int i10, String str) {
        kotlinx.coroutines.internal.i.a(i10);
        return kotlinx.coroutines.internal.i.b(this, str);
    }

    public long processNextEvent() {
        return !processUnconfinedEvent() ? Long.MAX_VALUE : 0L;
    }

    public final boolean processUnconfinedEvent() {
        DispatchedTask dispatchedTask;
        ArrayDeque<DispatchedTask<?>> arrayDeque = this.unconfinedQueue;
        if (arrayDeque == null || (dispatchedTask = (DispatchedTask) arrayDeque.p()) == null) {
            return false;
        }
        dispatchedTask.run();
        return true;
    }

    public boolean shouldBeProcessedFromContext() {
        return false;
    }

    public void shutdown() {
    }
}
