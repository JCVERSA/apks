package defpackage;

import io.reactivex.exceptions.CompositeException;

public final class mu8 extends mc7 {
    public final mc7 b;

    public static class a implements pd7 {
        public final pd7 b;

        public a(pd7 pd7Var) {
            this.b = pd7Var;
        }

        @Override
        public void onNext(gu8 gu8Var) {
            this.b.onNext(ku8.b(gu8Var));
        }

        @Override
        public void onComplete() {
            this.b.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            try {
                this.b.onNext(ku8.a(th));
                this.b.onComplete();
            } catch (Throwable th2) {
                try {
                    this.b.onError(th2);
                } catch (Throwable th3) {
                    re3.b(th3);
                    yw8.s(new CompositeException(th2, th3));
                }
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.b.onSubscribe(rc2Var);
        }
    }

    public mu8(mc7 mc7Var) {
        this.b = mc7Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new a(pd7Var));
    }
}
