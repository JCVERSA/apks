package io.reactivex.internal.operators.single;

import defpackage.in9;

public abstract class SingleDelay$Delay implements in9 {

    public final class OnError implements Runnable {
        private final Throwable e;
        final SingleDelay$Delay this$1;

        public OnError(SingleDelay$Delay singleDelay$Delay, Throwable th) {
            this.e = th;
        }

        @Override
        public void run() {
            throw null;
        }
    }

    public final class OnSuccess implements Runnable {
        final SingleDelay$Delay this$1;
        private final Object value;

        public OnSuccess(SingleDelay$Delay singleDelay$Delay, Object obj) {
            this.value = obj;
        }

        @Override
        public void run() {
            throw null;
        }
    }
}
