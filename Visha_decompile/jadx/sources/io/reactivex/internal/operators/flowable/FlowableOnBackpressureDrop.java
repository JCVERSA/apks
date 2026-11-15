package io.reactivex.internal.operators.flowable;

import defpackage.d2a;
import defpackage.f2a;
import defpackage.i50;
import defpackage.r14;
import defpackage.re3;
import defpackage.x2;
import defpackage.y14;
import defpackage.yw8;
import defpackage.zf1;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

public final class FlowableOnBackpressureDrop extends x2 implements zf1 {
    public final zf1 d;

    public static final class BackpressureDropSubscriber<T> extends AtomicLong implements y14, f2a {
        private static final long serialVersionUID = -6246093802440953054L;
        boolean done;
        final d2a downstream;
        final zf1 onDrop;
        f2a upstream;

        public BackpressureDropSubscriber(d2a d2aVar, zf1 zf1Var) {
            this.downstream = d2aVar;
            this.onDrop = zf1Var;
        }

        @Override
        public void cancel() {
            this.upstream.cancel();
        }

        @Override
        public void onComplete() {
            if (this.done) {
                return;
            }
            this.done = true;
            this.downstream.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            if (this.done) {
                yw8.s(th);
            } else {
                this.done = true;
                this.downstream.onError(th);
            }
        }

        @Override
        public void onNext(T t) {
            if (this.done) {
                return;
            }
            if (get() != 0) {
                this.downstream.onNext(t);
                i50.d(this, 1L);
                return;
            }
            try {
                this.onDrop.accept(t);
            } catch (Throwable th) {
                re3.b(th);
                cancel();
                onError(th);
            }
        }

        @Override
        public void onSubscribe(f2a f2aVar) {
            if (SubscriptionHelper.validate(this.upstream, f2aVar)) {
                this.upstream = f2aVar;
                this.downstream.onSubscribe(this);
                f2aVar.request(Long.MAX_VALUE);
            }
        }

        @Override
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                i50.a(this, j);
            }
        }
    }

    public FlowableOnBackpressureDrop(r14 r14Var) {
        super(r14Var);
        this.d = this;
    }

    @Override
    public void accept(Object obj) {
    }

    @Override
    public void q(d2a d2aVar) {
        this.c.p(new BackpressureDropSubscriber(d2aVar, this.d));
    }
}
