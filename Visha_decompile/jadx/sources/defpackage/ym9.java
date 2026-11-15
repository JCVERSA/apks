package defpackage;

public final class ym9 extends xm9 {
    public final mn9 a;
    public final zf1 b;

    public final class a implements in9 {
        public final in9 b;

        public a(in9 in9Var) {
            this.b = in9Var;
        }

        @Override
        public void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.b.onSubscribe(rc2Var);
        }

        @Override
        public void onSuccess(Object obj) {
            try {
                ym9.this.b.accept(obj);
                this.b.onSuccess(obj);
            } catch (Throwable th) {
                re3.b(th);
                this.b.onError(th);
            }
        }
    }

    public ym9(mn9 mn9Var, zf1 zf1Var) {
        this.a = mn9Var;
        this.b = zf1Var;
    }

    @Override
    public void q(in9 in9Var) {
        this.a.a(new a(in9Var));
    }
}
