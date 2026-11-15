package io.reactivex.internal.operators.observable;

import defpackage.ld7;
import defpackage.n3;
import defpackage.od9;
import defpackage.pd7;
import defpackage.rc2;
import io.reactivex.Scheduler;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;

public final class ObservableDelay extends n3 {
    public final long c;
    public final TimeUnit d;
    public final Scheduler e;
    public final boolean f;

    public static final class DelayObserver implements pd7, rc2 {
        public final pd7 b;
        public final long c;
        public final TimeUnit d;
        public final Scheduler.Worker e;
        public final boolean f;
        public rc2 g;

        public final class OnComplete implements Runnable {
            public OnComplete() {
            }

            @Override
            public void run() {
                try {
                    DelayObserver.this.b.onComplete();
                } finally {
                    DelayObserver.this.e.dispose();
                }
            }
        }

        public final class OnError implements Runnable {
            private final Throwable throwable;

            public OnError(Throwable th) {
                this.throwable = th;
            }

            @Override
            public void run() {
                try {
                    DelayObserver.this.b.onError(this.throwable);
                } finally {
                    DelayObserver.this.e.dispose();
                }
            }
        }

        public final class OnNext implements Runnable {
            private final Object t;

            public OnNext(Object obj) {
                this.t = obj;
            }

            @Override
            public void run() {
                DelayObserver.this.b.onNext(this.t);
            }
        }

        public DelayObserver(pd7 pd7Var, long j, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
            this.b = pd7Var;
            this.c = j;
            this.d = timeUnit;
            this.e = worker;
            this.f = z;
        }

        @Override
        public void dispose() {
            this.g.dispose();
            this.e.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.e.isDisposed();
        }

        @Override
        public void onComplete() {
            this.e.schedule(new OnComplete(), this.c, this.d);
        }

        @Override
        public void onError(Throwable th) {
            this.e.schedule(new OnError(th), this.f ? this.c : 0L, this.d);
        }

        @Override
        public void onNext(Object obj) {
            this.e.schedule(new OnNext(obj), this.c, this.d);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.g, rc2Var)) {
                this.g = rc2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public ObservableDelay(ld7 ld7Var, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        super(ld7Var);
        this.c = j;
        this.d = timeUnit;
        this.e = scheduler;
        this.f = z;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new DelayObserver(this.f ? pd7Var : new od9(pd7Var), this.c, this.d, this.e.b(), this.f));
    }
}
