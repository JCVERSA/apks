package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;

public final class id7 extends b96 {
    public final ld7 b;

    public static final class a implements pd7, rc2 {
        public final k96 b;
        public rc2 c;
        public Object d;
        public boolean e;

        public a(k96 k96Var) {
            this.b = k96Var;
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
            if (this.e) {
                return;
            }
            this.e = true;
            Object obj = this.d;
            this.d = null;
            if (obj == null) {
                this.b.onComplete();
            } else {
                this.b.onSuccess(obj);
            }
        }

        @Override
        public void onError(Throwable th) {
            if (this.e) {
                yw8.s(th);
            } else {
                this.e = true;
                this.b.onError(th);
            }
        }

        @Override
        public void onNext(Object obj) {
            if (this.e) {
                return;
            }
            if (this.d == null) {
                this.d = obj;
                return;
            }
            this.e = true;
            this.c.dispose();
            this.b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.c, rc2Var)) {
                this.c = rc2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public id7(ld7 ld7Var) {
        this.b = ld7Var;
    }

    @Override
    public void j(k96 k96Var) {
        this.b.subscribe(new a(k96Var));
    }
}
