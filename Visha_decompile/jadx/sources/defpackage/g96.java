package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;

public final class g96 extends b96 {
    public final mn9 b;
    public final ie8 c;

    public static final class a implements in9, rc2 {
        public final k96 b;
        public final ie8 c;
        public rc2 d;

        public a(k96 k96Var, ie8 ie8Var) {
            this.b = k96Var;
            this.c = ie8Var;
        }

        @Override
        public void dispose() {
            rc2 rc2Var = this.d;
            this.d = DisposableHelper.DISPOSED;
            rc2Var.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override
        public void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.d, rc2Var)) {
                this.d = rc2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override
        public void onSuccess(Object obj) {
            try {
                if (this.c.test(obj)) {
                    this.b.onSuccess(obj);
                } else {
                    this.b.onComplete();
                }
            } catch (Throwable th) {
                re3.b(th);
                this.b.onError(th);
            }
        }
    }

    public g96(mn9 mn9Var, ie8 ie8Var) {
        this.b = mn9Var;
        this.c = ie8Var;
    }

    @Override
    public void j(k96 k96Var) {
        this.b.a(new a(k96Var, this.c));
    }
}
