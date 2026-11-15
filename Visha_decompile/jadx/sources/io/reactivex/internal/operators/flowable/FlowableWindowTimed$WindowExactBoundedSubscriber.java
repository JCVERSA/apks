package io.reactivex.internal.operators.flowable;

import defpackage.f2a;
import defpackage.jm8;
import defpackage.nm9;

public abstract class FlowableWindowTimed$WindowExactBoundedSubscriber extends jm8 implements f2a {

    public static final class ConsumerIndexHolder implements Runnable {
        final long index;
        final FlowableWindowTimed$WindowExactBoundedSubscriber parent;

        public ConsumerIndexHolder(long j, FlowableWindowTimed$WindowExactBoundedSubscriber flowableWindowTimed$WindowExactBoundedSubscriber) {
            this.index = j;
        }

        @Override
        public void run() {
            if (FlowableWindowTimed$WindowExactBoundedSubscriber.a(null)) {
                throw null;
            }
            FlowableWindowTimed$WindowExactBoundedSubscriber.b(null).offer(this);
            throw null;
        }
    }

    public static boolean a(FlowableWindowTimed$WindowExactBoundedSubscriber flowableWindowTimed$WindowExactBoundedSubscriber) {
        throw null;
    }

    public static nm9 b(FlowableWindowTimed$WindowExactBoundedSubscriber flowableWindowTimed$WindowExactBoundedSubscriber) {
        throw null;
    }
}
