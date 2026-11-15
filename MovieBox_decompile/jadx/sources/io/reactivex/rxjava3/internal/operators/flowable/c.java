package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.m;
import io.reactivex.rxjava3.core.o;

public final class c extends io.reactivex.rxjava3.core.e {

    private final m f62373b;

    static final class a implements o, i00.d {

        final i00.c f62374a;

        io.reactivex.rxjava3.disposables.c f62375b;

        a(i00.c cVar) {
            this.f62374a = cVar;
        }

        @Override
        public void cancel() {
            this.f62375b.dispose();
        }

        @Override
        public void onComplete() {
            this.f62374a.onComplete();
        }

        @Override
        public void onError(Throwable th2) {
            this.f62374a.onError(th2);
        }

        @Override
        public void onNext(Object obj) {
            this.f62374a.onNext(obj);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f62375b = cVar;
            this.f62374a.onSubscribe(this);
        }

        @Override
        public void request(long j10) {
        }
    }

    public c(m mVar) {
        this.f62373b = mVar;
    }

    @Override
    protected void g(i00.c cVar) {
        this.f62373b.subscribe(new a(cVar));
    }
}
