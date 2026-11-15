package androidx.work.impl.utils;

import androidx.annotation.NonNull;
import androidx.work.impl.d0;

public class PruneWorkRunnable implements Runnable {
    private final androidx.work.impl.o mOperation = new androidx.work.impl.o();
    private final d0 mWorkManagerImpl;

    public PruneWorkRunnable(@NonNull d0 d0Var) {
        this.mWorkManagerImpl = d0Var;
    }

    @NonNull
    public androidx.work.l getOperation() {
        return this.mOperation;
    }

    @Override
    public void run() {
        try {
            this.mWorkManagerImpl.t().n0().b();
            this.mOperation.a(androidx.work.l.f15406a);
        } catch (Throwable th2) {
            this.mOperation.a(new androidx.work.l.b.a(th2));
        }
    }
}
