package j00;

import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import retrofit2.j0;

final class b extends j {

    private final retrofit2.d f62850a;

    private static final class a implements io.reactivex.rxjava3.disposables.c, retrofit2.f {

        private final retrofit2.d f62851a;

        private final o f62852b;

        private volatile boolean f62853c;

        boolean f62854d = false;

        a(retrofit2.d dVar, o oVar) {
            this.f62851a = dVar;
            this.f62852b = oVar;
        }

        @Override
        public void a(retrofit2.d dVar, Throwable th2) {
            if (dVar.isCanceled()) {
                return;
            }
            try {
                this.f62852b.onError(th2);
            } catch (Throwable th3) {
                io.reactivex.rxjava3.exceptions.a.b(th3);
                dy.a.r(new CompositeException(th2, th3));
            }
        }

        @Override
        public void b(retrofit2.d dVar, j0 j0Var) {
            if (this.f62853c) {
                return;
            }
            try {
                this.f62852b.onNext(j0Var);
                if (this.f62853c) {
                    return;
                }
                this.f62854d = true;
                this.f62852b.onComplete();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                if (this.f62854d) {
                    dy.a.r(th2);
                    return;
                }
                if (this.f62853c) {
                    return;
                }
                try {
                    this.f62852b.onError(th2);
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    dy.a.r(new CompositeException(th2, th3));
                }
            }
        }

        @Override
        public void dispose() {
            this.f62853c = true;
            this.f62851a.cancel();
        }

        @Override
        public boolean isDisposed() {
            return this.f62853c;
        }
    }

    b(retrofit2.d dVar) {
        this.f62850a = dVar;
    }

    @Override
    protected void D(o oVar) {
        retrofit2.d dVarClone = this.f62850a.clone();
        a aVar = new a(dVarClone, oVar);
        oVar.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        dVarClone.f(aVar);
    }
}
