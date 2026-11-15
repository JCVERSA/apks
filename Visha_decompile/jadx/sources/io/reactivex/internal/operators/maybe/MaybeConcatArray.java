package io.reactivex.internal.operators.maybe;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.k96;
import defpackage.l96;
import defpackage.r14;
import defpackage.rc2;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class MaybeConcatArray extends r14 {
    public final l96[] c;

    public static final class ConcatMaybeObserver<T> extends AtomicInteger implements k96, f2a {
        private static final long serialVersionUID = 3520831347801429610L;
        final d2a downstream;
        int index;
        long produced;
        final l96[] sources;
        final AtomicLong requested = new AtomicLong();
        final SequentialDisposable disposables = new SequentialDisposable();
        final AtomicReference<Object> current = new AtomicReference<>(NotificationLite.COMPLETE);

        public ConcatMaybeObserver(d2a d2aVar, l96[] l96VarArr) {
            this.downstream = d2aVar;
            this.sources = l96VarArr;
        }

        @Override
        public void cancel() {
            this.disposables.dispose();
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<Object> atomicReference = this.current;
            d2a d2aVar = this.downstream;
            SequentialDisposable sequentialDisposable = this.disposables;
            while (!sequentialDisposable.isDisposed()) {
                Object obj = atomicReference.get();
                if (obj != null) {
                    if (obj != NotificationLite.COMPLETE) {
                        long j = this.produced;
                        if (j != this.requested.get()) {
                            this.produced = j + 1;
                            atomicReference.lazySet(null);
                            d2aVar.onNext(obj);
                        }
                    } else {
                        atomicReference.lazySet(null);
                    }
                    if (!sequentialDisposable.isDisposed()) {
                        int i = this.index;
                        l96[] l96VarArr = this.sources;
                        if (i == l96VarArr.length) {
                            d2aVar.onComplete();
                            return;
                        } else {
                            this.index = i + 1;
                            l96VarArr[i].a(this);
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            atomicReference.lazySet(null);
        }

        @Override
        public void onComplete() {
            this.current.lazySet(NotificationLite.COMPLETE);
            drain();
        }

        @Override
        public void onError(Throwable th) {
            this.downstream.onError(th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.disposables.replace(rc2Var);
        }

        @Override
        public void onSuccess(T t) {
            this.current.lazySet(t);
            drain();
        }

        @Override
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                i50.a(this.requested, j);
                drain();
            }
        }
    }

    public MaybeConcatArray(l96[] l96VarArr) {
        this.c = l96VarArr;
    }

    @Override
    public void q(d2a d2aVar) {
        ConcatMaybeObserver concatMaybeObserver = new ConcatMaybeObserver(d2aVar, this.c);
        d2aVar.onSubscribe(concatMaybeObserver);
        concatMaybeObserver.drain();
    }
}
