package defpackage;

public final class ad7 extends hb1 {
    public final ld7 a;

    public static final class a implements pd7, rc2 {
        public final qb1 b;
        public rc2 c;

        public a(qb1 qb1Var) {
            this.b = qb1Var;
        }

        @Override
        public void dispose() {
            this.c.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.c.isDisposed();
        }

        @Override
        public void onComplete() {
            this.b.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override
        public void onNext(Object obj) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.c = rc2Var;
            this.b.onSubscribe(this);
        }
    }

    public ad7(ld7 ld7Var) {
        this.a = ld7Var;
    }

    @Override
    public void i(qb1 qb1Var) {
        this.a.subscribe(new a(qb1Var));
    }
}
