package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.q;

abstract class SingleDelay$Delay implements q {

    final class OnError implements Runnable {

        private final Throwable f62471e;
        final SingleDelay$Delay this$1;

        OnError(SingleDelay$Delay singleDelay$Delay, Throwable th2) {
            this.f62471e = th2;
        }

        @Override
        public void run() {
            throw null;
        }
    }

    final class OnSuccess implements Runnable {
        final SingleDelay$Delay this$1;
        private final Object value;

        OnSuccess(SingleDelay$Delay singleDelay$Delay, Object obj) {
            this.value = obj;
        }

        @Override
        public void run() {
            throw null;
        }
    }
}
