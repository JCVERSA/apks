package io.reactivex.internal.operators.observable;

import defpackage.ld7;
import defpackage.mc7;
import defpackage.n3;
import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableRepeat extends n3 {
    public final long c;

    public static final class RepeatObserver<T> extends AtomicInteger implements pd7 {
        private static final long serialVersionUID = -7098360935104053232L;
        final pd7 downstream;
        long remaining;
        final SequentialDisposable sd;
        final ld7 source;

        public RepeatObserver(pd7 pd7Var, long j, SequentialDisposable sequentialDisposable, ld7 ld7Var) {
            this.downstream = pd7Var;
            this.sd = sequentialDisposable;
            this.source = ld7Var;
            this.remaining = j;
        }

        @Override
        public void onComplete() {
            long j = this.remaining;
            if (j != Long.MAX_VALUE) {
                this.remaining = j - 1;
            }
            if (j != 0) {
                subscribeNext();
            } else {
                this.downstream.onComplete();
            }
        }

        @Override
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.sd.replace(rc2Var);
        }

        public void subscribeNext() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.sd.isDisposed()) {
                    this.source.subscribe(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }
    }

    public ObservableRepeat(mc7 mc7Var, long j) {
        super(mc7Var);
        this.c = j;
    }

    @Override
    public void c0(pd7 pd7Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        pd7Var.onSubscribe(sequentialDisposable);
        long j = this.c;
        new RepeatObserver(pd7Var, j != Long.MAX_VALUE ? j - 1 : Long.MAX_VALUE, sequentialDisposable, this.b).subscribeNext();
    }
}
