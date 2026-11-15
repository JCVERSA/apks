package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

public final class ObservableRetryBiPredicate extends a {

    final yx.d f62405b;

    static final class RetryBiObserver<T> extends AtomicInteger implements io.reactivex.rxjava3.core.o {
        private static final long serialVersionUID = -7098360935104053232L;
        final io.reactivex.rxjava3.core.o downstream;
        final yx.d predicate;
        int retries;
        final io.reactivex.rxjava3.core.m source;
        final SequentialDisposable upstream;

        RetryBiObserver(io.reactivex.rxjava3.core.o oVar, yx.d dVar, SequentialDisposable sequentialDisposable, io.reactivex.rxjava3.core.m mVar) {
            this.downstream = oVar;
            this.upstream = sequentialDisposable;
            this.source = mVar;
            this.predicate = dVar;
        }

        @Override
        public void onComplete() {
            this.downstream.onComplete();
        }

        @Override
        public void onError(Throwable th2) {
            try {
                yx.d dVar = this.predicate;
                int i10 = this.retries + 1;
                this.retries = i10;
                if (dVar.a(Integer.valueOf(i10), th2)) {
                    subscribeNext();
                } else {
                    this.downstream.onError(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                this.downstream.onError(new CompositeException(th2, th3));
            }
        }

        @Override
        public void onNext(T t10) {
            this.downstream.onNext(t10);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.upstream.replace(cVar);
        }

        void subscribeNext() {
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

    public ObservableRetryBiPredicate(io.reactivex.rxjava3.core.j jVar, yx.d dVar) {
        super(jVar);
        this.f62405b = dVar;
    }

    @Override
    public void D(io.reactivex.rxjava3.core.o oVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        oVar.onSubscribe(sequentialDisposable);
        new RetryBiObserver(oVar, this.f62405b, sequentialDisposable, this.f62424a).subscribeNext();
    }
}
