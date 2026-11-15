package io.reactivex.rxjava3.internal.operators.observable;

abstract class ObservableDelay$DelayObserver implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

    final class OnComplete implements Runnable {
        final ObservableDelay$DelayObserver this$0;

        OnComplete(ObservableDelay$DelayObserver observableDelay$DelayObserver) {
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

    final class OnError implements Runnable {
        final ObservableDelay$DelayObserver this$0;
        private final Throwable throwable;

        OnError(ObservableDelay$DelayObserver observableDelay$DelayObserver, Throwable th2) {
            this.throwable = th2;
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

    final class OnNext implements Runnable {

        private final Object f62396t;
        final ObservableDelay$DelayObserver this$0;

        OnNext(ObservableDelay$DelayObserver observableDelay$DelayObserver, Object obj) {
            this.f62396t = obj;
        }

        @Override
        public void run() {
            throw null;
        }
    }
}
