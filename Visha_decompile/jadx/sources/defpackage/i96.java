package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;

public final class i96 extends b96 {
    public final mn9 b;

    public static final class a implements in9, rc2 {
        public final k96 b;
        public rc2 c;

        public a(k96 k96Var) {
            this.b = k96Var;
        }

        @Override
        public void dispose() {
            this.c.dispose();
            this.c = DisposableHelper.DISPOSED;
        }

        @Override
        public boolean isDisposed() {
            return this.c.isDisposed();
        }

        @Override
        public void onError(Throwable th) {
            this.c = DisposableHelper.DISPOSED;
            this.b.onError(th);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.c, rc2Var)) {
                this.c = rc2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override
        public void onSuccess(Object obj) {
            this.c = DisposableHelper.DISPOSED;
            this.b.onSuccess(obj);
        }
    }

    public i96(mn9 mn9Var) {
        this.b = mn9Var;
    }

    @Override
    public void j(k96 k96Var) {
        this.b.a(new a(k96Var));
    }
}
