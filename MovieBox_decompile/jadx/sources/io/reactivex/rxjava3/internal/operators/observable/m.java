package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;

public final class m extends io.reactivex.rxjava3.internal.operators.observable.a {

    final yx.h f62449b;

    static final class a implements io.reactivex.rxjava3.core.o {

        final io.reactivex.rxjava3.core.o f62450a;

        final yx.h f62451b;

        final SequentialDisposable f62452c = new SequentialDisposable();

        boolean f62453d;

        boolean f62454e;

        a(io.reactivex.rxjava3.core.o oVar, yx.h hVar) {
            this.f62450a = oVar;
            this.f62451b = hVar;
        }

        @Override
        public void onComplete() {
            if (this.f62454e) {
                return;
            }
            this.f62454e = true;
            this.f62453d = true;
            this.f62450a.onComplete();
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f62453d) {
                if (this.f62454e) {
                    dy.a.r(th2);
                    return;
                } else {
                    this.f62450a.onError(th2);
                    return;
                }
            }
            this.f62453d = true;
            try {
                io.reactivex.rxjava3.core.m mVar = (io.reactivex.rxjava3.core.m) this.f62451b.apply(th2);
                if (mVar != null) {
                    mVar.subscribe(this);
                    return;
                }
                NullPointerException nullPointerException = new NullPointerException("Observable is null");
                nullPointerException.initCause(th2);
                this.f62450a.onError(nullPointerException);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                this.f62450a.onError(new CompositeException(th2, th3));
            }
        }

        @Override
        public void onNext(Object obj) {
            if (this.f62454e) {
                return;
            }
            this.f62450a.onNext(obj);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f62452c.replace(cVar);
        }
    }

    public m(io.reactivex.rxjava3.core.m mVar, yx.h hVar) {
        super(mVar);
        this.f62449b = hVar;
    }

    @Override
    public void D(io.reactivex.rxjava3.core.o oVar) {
        a aVar = new a(oVar, this.f62449b);
        oVar.onSubscribe(aVar.f62452c);
        this.f62424a.subscribe(aVar);
    }
}
