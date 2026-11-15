package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

public final class d extends io.reactivex.rxjava3.internal.operators.observable.a {

    final yx.f f62427b;

    final yx.f f62428c;

    final yx.a f62429d;

    final yx.a f62430e;

    static final class a implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        final io.reactivex.rxjava3.core.o f62431a;

        final yx.f f62432b;

        final yx.f f62433c;

        final yx.a f62434d;

        final yx.a f62435e;

        io.reactivex.rxjava3.disposables.c f62436f;

        boolean f62437g;

        a(io.reactivex.rxjava3.core.o oVar, yx.f fVar, yx.f fVar2, yx.a aVar, yx.a aVar2) {
            this.f62431a = oVar;
            this.f62432b = fVar;
            this.f62433c = fVar2;
            this.f62434d = aVar;
            this.f62435e = aVar2;
        }

        @Override
        public void dispose() {
            this.f62436f.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.f62436f.isDisposed();
        }

        @Override
        public void onComplete() {
            if (this.f62437g) {
                return;
            }
            try {
                this.f62434d.run();
                this.f62437g = true;
                this.f62431a.onComplete();
                try {
                    this.f62435e.run();
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    dy.a.r(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                onError(th3);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f62437g) {
                dy.a.r(th2);
                return;
            }
            this.f62437g = true;
            try {
                this.f62433c.accept(th2);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                th2 = new CompositeException(th2, th3);
            }
            this.f62431a.onError(th2);
            try {
                this.f62435e.run();
            } catch (Throwable th4) {
                io.reactivex.rxjava3.exceptions.a.b(th4);
                dy.a.r(th4);
            }
        }

        @Override
        public void onNext(Object obj) {
            if (this.f62437g) {
                return;
            }
            try {
                this.f62432b.accept(obj);
                this.f62431a.onNext(obj);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f62436f.dispose();
                onError(th2);
            }
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.f62436f, cVar)) {
                this.f62436f = cVar;
                this.f62431a.onSubscribe(this);
            }
        }
    }

    public d(io.reactivex.rxjava3.core.m mVar, yx.f fVar, yx.f fVar2, yx.a aVar, yx.a aVar2) {
        super(mVar);
        this.f62427b = fVar;
        this.f62428c = fVar2;
        this.f62429d = aVar;
        this.f62430e = aVar2;
    }

    @Override
    public void D(io.reactivex.rxjava3.core.o oVar) {
        this.f62424a.subscribe(new a(oVar, this.f62427b, this.f62428c, this.f62429d, this.f62430e));
    }
}
