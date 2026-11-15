package j00;

import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import retrofit2.j0;

final class c extends j {

    private final retrofit2.d f62855a;

    private static final class a implements io.reactivex.rxjava3.disposables.c {

        private final retrofit2.d f62856a;

        private volatile boolean f62857b;

        a(retrofit2.d dVar) {
            this.f62856a = dVar;
        }

        @Override
        public void dispose() {
            this.f62857b = true;
            this.f62856a.cancel();
        }

        @Override
        public boolean isDisposed() {
            return this.f62857b;
        }
    }

    c(retrofit2.d dVar) {
        this.f62855a = dVar;
    }

    @Override
    protected void D(o oVar) {
        boolean z10;
        retrofit2.d dVarClone = this.f62855a.clone();
        a aVar = new a(dVarClone);
        oVar.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        try {
            j0 j0VarExecute = dVarClone.execute();
            if (!aVar.isDisposed()) {
                oVar.onNext(j0VarExecute);
            }
            if (aVar.isDisposed()) {
                return;
            }
            try {
                oVar.onComplete();
            } catch (Throwable th2) {
                th = th2;
                z10 = true;
                io.reactivex.rxjava3.exceptions.a.b(th);
                if (z10) {
                    dy.a.r(th);
                    return;
                }
                if (aVar.isDisposed()) {
                    return;
                }
                try {
                    oVar.onError(th);
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    dy.a.r(new CompositeException(th, th3));
                }
            }
        } catch (Throwable th4) {
            th = th4;
            z10 = false;
        }
    }
}
