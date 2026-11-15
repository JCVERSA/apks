package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

public final class o extends io.reactivex.rxjava3.core.p {

    final io.reactivex.rxjava3.core.m f62460a;

    final Object f62461b;

    static final class a implements io.reactivex.rxjava3.core.o, io.reactivex.rxjava3.disposables.c {

        final io.reactivex.rxjava3.core.q f62462a;

        final Object f62463b;

        io.reactivex.rxjava3.disposables.c f62464c;

        Object f62465d;

        boolean f62466e;

        a(io.reactivex.rxjava3.core.q qVar, Object obj) {
            this.f62462a = qVar;
            this.f62463b = obj;
        }

        @Override
        public void dispose() {
            this.f62464c.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.f62464c.isDisposed();
        }

        @Override
        public void onComplete() {
            if (this.f62466e) {
                return;
            }
            this.f62466e = true;
            Object obj = this.f62465d;
            this.f62465d = null;
            if (obj == null) {
                obj = this.f62463b;
            }
            if (obj != null) {
                this.f62462a.onSuccess(obj);
            } else {
                this.f62462a.onError(new NoSuchElementException());
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f62466e) {
                dy.a.r(th2);
            } else {
                this.f62466e = true;
                this.f62462a.onError(th2);
            }
        }

        @Override
        public void onNext(Object obj) {
            if (this.f62466e) {
                return;
            }
            if (this.f62465d == null) {
                this.f62465d = obj;
                return;
            }
            this.f62466e = true;
            this.f62464c.dispose();
            this.f62462a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            if (DisposableHelper.validate(this.f62464c, cVar)) {
                this.f62464c = cVar;
                this.f62462a.onSubscribe(this);
            }
        }
    }

    public o(io.reactivex.rxjava3.core.m mVar, Object obj) {
        this.f62460a = mVar;
        this.f62461b = obj;
    }

    @Override
    public void b(io.reactivex.rxjava3.core.q qVar) {
        this.f62460a.subscribe(new a(qVar, this.f62461b));
    }
}
