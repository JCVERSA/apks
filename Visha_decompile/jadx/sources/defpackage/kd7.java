package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;

public final class kd7 extends n3 {
    public final long c;

    public static final class a implements pd7, rc2 {
        public final pd7 b;
        public long c;
        public rc2 d;

        public a(pd7 pd7Var, long j) {
            this.b = pd7Var;
            this.c = j;
        }

        @Override
        public void dispose() {
            this.d.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.d.isDisposed();
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
            long j = this.c;
            if (j != 0) {
                this.c = j - 1;
            } else {
                this.b.onNext(obj);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.d, rc2Var)) {
                this.d = rc2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public kd7(ld7 ld7Var, long j) {
        super(ld7Var);
        this.c = j;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new a(pd7Var, this.c));
    }
}
