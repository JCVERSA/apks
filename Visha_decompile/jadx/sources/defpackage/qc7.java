package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

public final class qc7 extends xm9 {
    public final ld7 a;
    public final long b;
    public final Object c;

    public static final class a implements pd7, rc2 {
        public final in9 b;
        public final long c;
        public final Object d;
        public rc2 e;
        public long f;
        public boolean g;

        public a(in9 in9Var, long j, Object obj) {
            this.b = in9Var;
            this.c = j;
            this.d = obj;
        }

        @Override
        public void dispose() {
            this.e.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.e.isDisposed();
        }

        @Override
        public void onComplete() {
            if (this.g) {
                return;
            }
            this.g = true;
            Object obj = this.d;
            if (obj != null) {
                this.b.onSuccess(obj);
            } else {
                this.b.onError(new NoSuchElementException());
            }
        }

        @Override
        public void onError(Throwable th) {
            if (this.g) {
                yw8.s(th);
            } else {
                this.g = true;
                this.b.onError(th);
            }
        }

        @Override
        public void onNext(Object obj) {
            if (this.g) {
                return;
            }
            long j = this.f;
            if (j != this.c) {
                this.f = j + 1;
                return;
            }
            this.g = true;
            this.e.dispose();
            this.b.onSuccess(obj);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.e, rc2Var)) {
                this.e = rc2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public qc7(ld7 ld7Var, long j, Object obj) {
        this.a = ld7Var;
        this.b = j;
        this.c = obj;
    }

    @Override
    public void q(in9 in9Var) {
        this.a.subscribe(new a(in9Var, this.b, this.c));
    }
}
