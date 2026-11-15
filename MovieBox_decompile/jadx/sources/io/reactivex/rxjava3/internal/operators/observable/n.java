package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

public final class n extends io.reactivex.rxjava3.core.g {

    final io.reactivex.rxjava3.core.m f62455a;

    static final class a implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        final io.reactivex.rxjava3.core.h f62456a;

        io.reactivex.rxjava3.disposables.c f62457b;

        Object f62458c;

        boolean f62459d;

        a(io.reactivex.rxjava3.core.h hVar) {
            this.f62456a = hVar;
        }

        @Override
        public void dispose() {
            this.f62457b.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.f62457b.isDisposed();
        }

        @Override
        public void onComplete() {
            if (this.f62459d) {
                return;
            }
            this.f62459d = true;
            Object obj = this.f62458c;
            this.f62458c = null;
            if (obj == null) {
                this.f62456a.onComplete();
            } else {
                this.f62456a.onSuccess(obj);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f62459d) {
                dy.a.r(th2);
            } else {
                this.f62459d = true;
                this.f62456a.onError(th2);
            }
        }

        @Override
        public void onNext(Object obj) {
            if (this.f62459d) {
                return;
            }
            if (this.f62458c == null) {
                this.f62458c = obj;
                return;
            }
            this.f62459d = true;
            this.f62457b.dispose();
            this.f62456a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.f62457b, cVar)) {
                this.f62457b = cVar;
                this.f62456a.onSubscribe(this);
            }
        }
    }

    public n(io.reactivex.rxjava3.core.m mVar) {
        this.f62455a = mVar;
    }

    @Override
    public void b(io.reactivex.rxjava3.core.h hVar) {
        this.f62455a.subscribe(new a(hVar));
    }
}
