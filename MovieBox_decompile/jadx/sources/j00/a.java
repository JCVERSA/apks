package j00;

import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.CompositeException;
import retrofit2.adapter.rxjava3.HttpException;
import retrofit2.j0;

final class a extends j {

    private final j f62847a;

    private static class C0770a implements o {

        private final o f62848a;

        private boolean f62849b;

        C0770a(o oVar) {
            this.f62848a = oVar;
        }

        @Override
        public void onNext(j0 j0Var) {
            if (j0Var.e()) {
                this.f62848a.onNext(j0Var.a());
                return;
            }
            this.f62849b = true;
            HttpException httpException = new HttpException(j0Var);
            try {
                this.f62848a.onError(httpException);
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                dy.a.r(new CompositeException(httpException, th2));
            }
        }

        @Override
        public void onComplete() {
            if (this.f62849b) {
                return;
            }
            this.f62848a.onComplete();
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f62849b) {
                this.f62848a.onError(th2);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th2);
            dy.a.r(assertionError);
        }

        @Override
        public void onSubscribe(io.reactivex.rxjava3.disposables.c cVar) {
            this.f62848a.onSubscribe(cVar);
        }
    }

    a(j jVar) {
        this.f62847a = jVar;
    }

    @Override
    protected void D(o oVar) {
        this.f62847a.subscribe(new C0770a(oVar));
    }
}
