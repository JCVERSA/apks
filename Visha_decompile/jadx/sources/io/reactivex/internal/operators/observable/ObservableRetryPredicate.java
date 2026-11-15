package io.reactivex.internal.operators.observable;

import defpackage.ie8;
import defpackage.ld7;
import defpackage.mc7;
import defpackage.n3;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.re3;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableRetryPredicate extends n3 {
    public final ie8 c;
    public final long d;

    public static final class RepeatObserver<T> extends AtomicInteger implements pd7 {
        private static final long serialVersionUID = -7098360935104053232L;
        final pd7 downstream;
        final ie8 predicate;
        long remaining;
        final ld7 source;
        final SequentialDisposable upstream;

        public RepeatObserver(pd7 pd7Var, long j, ie8 ie8Var, SequentialDisposable sequentialDisposable, ld7 ld7Var) {
            this.downstream = pd7Var;
            this.upstream = sequentialDisposable;
            this.source = ld7Var;
            this.predicate = ie8Var;
            this.remaining = j;
        }

        @Override
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            long j = this.remaining;
            if (j != Long.MAX_VALUE) {
                this.remaining = j - 1;
            }
            if (j == 0) {
                this.downstream.onError(th);
                return;
            }
            try {
                if (this.predicate.test(th)) {
                    subscribeNext();
                } else {
                    this.downstream.onError(th);
                }
            } catch (Throwable th2) {
                re3.b(th2);
                this.downstream.onError(new CompositeException(th, th2));
            }
        }

        @Override
        public void onNext(T t) {
            this.downstream.onNext(t);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.upstream.replace(rc2Var);
        }

        public void subscribeNext() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.upstream.isDisposed()) {
                    this.source.subscribe(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }
    }

    public ObservableRetryPredicate(mc7 mc7Var, long j, ie8 ie8Var) {
        super(mc7Var);
        this.c = ie8Var;
        this.d = j;
    }

    @Override
    public void c0(pd7 pd7Var) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        pd7Var.onSubscribe(sequentialDisposable);
        new RepeatObserver(pd7Var, this.d, this.c, sequentialDisposable, this.b).subscribeNext();
    }
}
