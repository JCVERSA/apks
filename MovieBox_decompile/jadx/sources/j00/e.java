package j00;

import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import retrofit2.j0;

final class e extends j {

    private final j f62860a;

    private static class a implements o {

        private final o f62861a;

        a(o oVar) {
            this.f62861a = oVar;
        }

        @Override
        public void onNext(j0 j0Var) {
            this.f62861a.onNext(d.b(j0Var));
        }

        @Override
        public void onComplete() {
            this.f62861a.onComplete();
        }

        @Override
        public void onError(Throwable th2) {
            try {
                this.f62861a.onNext(d.a(th2));
                this.f62861a.onComplete();
            } catch (Throwable th3) {
                try {
                    this.f62861a.onError(th3);
                } catch (Throwable th4) {
                    io.reactivex.rxjava3.exceptions.a.b(th4);
                    dy.a.r(new CompositeException(th3, th4));
                }
            }
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f62861a.onSubscribe(cVar);
        }
    }

    e(j jVar) {
        this.f62860a = jVar;
    }

    @Override
    protected void D(o oVar) {
        this.f62860a.subscribe(new a(oVar));
    }
}
