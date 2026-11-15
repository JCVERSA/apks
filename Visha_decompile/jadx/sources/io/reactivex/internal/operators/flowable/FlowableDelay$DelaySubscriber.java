package io.reactivex.internal.operators.flowable;

import defpackage.f2a;
import defpackage.y14;

public abstract class FlowableDelay$DelaySubscriber implements y14, f2a {

    public final class OnComplete implements Runnable {
        final FlowableDelay$DelaySubscriber this$0;

        public OnComplete(FlowableDelay$DelaySubscriber flowableDelay$DelaySubscriber) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:?, code lost:
        
            throw null;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            try {
                throw null;
            } catch (Throwable unused) {
                throw null;
            }
        }
    }

    public final class OnError implements Runnable {
        private final Throwable t;
        final FlowableDelay$DelaySubscriber this$0;

        public OnError(FlowableDelay$DelaySubscriber flowableDelay$DelaySubscriber, Throwable th) {
            this.t = th;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:?, code lost:
        
            throw null;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            try {
                throw null;
            } catch (Throwable unused) {
                throw null;
            }
        }
    }

    public final class OnNext implements Runnable {
        private final Object t;
        final FlowableDelay$DelaySubscriber this$0;

        public OnNext(FlowableDelay$DelaySubscriber flowableDelay$DelaySubscriber, Object obj) {
            this.t = obj;
        }

        @Override
        public void run() {
            throw null;
        }
    }
}
