package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.a;
import io.reactivex.rxjava3.core.b;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class CompletableTimeout extends a {

    final class DisposeTask implements Runnable {
        final b downstream;
        private final AtomicBoolean once;
        final io.reactivex.rxjava3.disposables.a set;
        final CompletableTimeout this$0;

        DisposeTask(CompletableTimeout completableTimeout, AtomicBoolean atomicBoolean, io.reactivex.rxjava3.disposables.a aVar, b bVar) {
            this.once = atomicBoolean;
            this.set = aVar;
            this.downstream = bVar;
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
