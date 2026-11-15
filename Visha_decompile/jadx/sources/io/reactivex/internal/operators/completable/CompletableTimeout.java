package io.reactivex.internal.operators.completable;

import defpackage.gd1;
import defpackage.hb1;
import defpackage.qb1;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class CompletableTimeout extends hb1 {

    public final class DisposeTask implements Runnable {
        final qb1 downstream;
        private final AtomicBoolean once;
        final gd1 set;
        final CompletableTimeout this$0;

        public DisposeTask(CompletableTimeout completableTimeout, AtomicBoolean atomicBoolean, gd1 gd1Var, qb1 qb1Var) {
            this.once = atomicBoolean;
            this.set = gd1Var;
            this.downstream = qb1Var;
        }

        @Override
        public void run() {
            if (this.once.compareAndSet(false, true)) {
                this.set.d();
                throw null;
            }
        }
    }
}
