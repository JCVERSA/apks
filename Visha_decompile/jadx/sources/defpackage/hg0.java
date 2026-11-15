package defpackage;

import io.reactivex.exceptions.CompositeException;
import retrofit2.adapter.rxjava2.HttpException;

public final class hg0 extends mc7 {
    public final mc7 b;

    public static class a implements pd7 {
        public final pd7 b;
        public boolean c;

        public a(pd7 pd7Var) {
            this.b = pd7Var;
        }

        @Override
        public void onNext(gu8 gu8Var) {
            if (gu8Var.e()) {
                this.b.onNext(gu8Var.a());
                return;
            }
            this.c = true;
            HttpException httpException = new HttpException(gu8Var);
            try {
                this.b.onError(httpException);
            } catch (Throwable th) {
                re3.b(th);
                yw8.s(new CompositeException(httpException, th));
            }
        }

        @Override
        public void onComplete() {
            if (this.c) {
                return;
            }
            this.b.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            if (!this.c) {
                this.b.onError(th);
                return;
            }
            AssertionError assertionError = new AssertionError("This should never happen! Report as a bug with the full stacktrace.");
            assertionError.initCause(th);
            yw8.s(assertionError);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.b.onSubscribe(rc2Var);
        }
    }

    public hg0(mc7 mc7Var) {
        this.b = mc7Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new a(pd7Var));
    }
}
