package io.reactivex.rxjava3.internal.operators.observable;

public final class j extends io.reactivex.rxjava3.core.a {

    final io.reactivex.rxjava3.core.m f62443a;

    static final class a implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        final io.reactivex.rxjava3.core.b f62444a;

        io.reactivex.rxjava3.disposables.c f62445b;

        a(io.reactivex.rxjava3.core.b bVar) {
            this.f62444a = bVar;
        }

        @Override
        public void dispose() {
            this.f62445b.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.f62445b.isDisposed();
        }

        @Override
        public void onComplete() {
            this.f62444a.onComplete();
        }

        @Override
        public void onError(Throwable th2) {
            this.f62444a.onError(th2);
        }

        @Override
        public void onNext(Object obj) {
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f62445b = cVar;
            this.f62444a.onSubscribe(this);
        }
    }

    public j(io.reactivex.rxjava3.core.m mVar) {
        this.f62443a = mVar;
    }

    @Override
    public void b(io.reactivex.rxjava3.core.b bVar) {
        this.f62443a.subscribe(new a(bVar));
    }
}
