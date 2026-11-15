package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;

public final class zc7 extends n3 {

    public static final class a implements pd7, rc2 {
        public final pd7 b;
        public rc2 c;

        public a(pd7 pd7Var) {
            this.b = pd7Var;
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
            this.b.onNext(obj);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.c, rc2Var)) {
                this.c = rc2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public zc7(ld7 ld7Var) {
        super(ld7Var);
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new a(pd7Var));
    }
}
