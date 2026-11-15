package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

public final class md7 extends n3 {
    public final long c;

    public static final class a implements pd7, rc2 {
        public final pd7 b;
        public boolean c;
        public rc2 d;
        public long e;

        public a(pd7 pd7Var, long j) {
            this.b = pd7Var;
            this.e = j;
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
            if (this.c) {
                return;
            }
            this.c = true;
            this.d.dispose();
            this.b.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            if (this.c) {
                yw8.s(th);
                return;
            }
            this.c = true;
            this.d.dispose();
            this.b.onError(th);
        }

        @Override
        public void onNext(Object obj) {
            if (this.c) {
                return;
            }
            long j = this.e;
            long j2 = j - 1;
            this.e = j2;
            if (j > 0) {
                boolean z = j2 == 0;
                this.b.onNext(obj);
                if (z) {
                    onComplete();
                }
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.d, rc2Var)) {
                this.d = rc2Var;
                if (this.e != 0) {
                    this.b.onSubscribe(this);
                    return;
                }
                this.c = true;
                rc2Var.dispose();
                EmptyDisposable.complete(this.b);
            }
        }
    }

    public md7(ld7 ld7Var, long j) {
        super(ld7Var);
        this.c = j;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new a(pd7Var, this.c));
    }
}
