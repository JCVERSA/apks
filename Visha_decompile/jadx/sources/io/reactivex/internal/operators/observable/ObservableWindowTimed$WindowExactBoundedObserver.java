package io.reactivex.internal.operators.observable;

import defpackage.im8;
import defpackage.nm9;
import defpackage.rc2;

public abstract class ObservableWindowTimed$WindowExactBoundedObserver extends im8 implements rc2 {

    public static final class ConsumerIndexHolder implements Runnable {
        final long index;
        final ObservableWindowTimed$WindowExactBoundedObserver parent;

        public ConsumerIndexHolder(long j, ObservableWindowTimed$WindowExactBoundedObserver observableWindowTimed$WindowExactBoundedObserver) {
            this.index = j;
        }

        @Override
        public void run() {
            if (ObservableWindowTimed$WindowExactBoundedObserver.a(null)) {
                throw null;
            }
            ObservableWindowTimed$WindowExactBoundedObserver.b(null).offer(this);
            throw null;
        }
    }

    public static boolean a(ObservableWindowTimed$WindowExactBoundedObserver observableWindowTimed$WindowExactBoundedObserver) {
        throw null;
    }

    public static nm9 b(ObservableWindowTimed$WindowExactBoundedObserver observableWindowTimed$WindowExactBoundedObserver) {
        throw null;
    }
}
