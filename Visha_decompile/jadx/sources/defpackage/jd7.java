package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

public final class jd7 extends xm9 {
    public final ld7 a;
    public final Object b;

    public static final class a implements pd7, rc2 {
        public final in9 b;
        public final Object c;
        public rc2 d;
        public Object e;
        public boolean f;

        public a(in9 in9Var, Object obj) {
            this.b = in9Var;
            this.c = obj;
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
            if (this.f) {
                return;
            }
            this.f = true;
            Object obj = this.e;
            this.e = null;
            if (obj == null) {
                obj = this.c;
            }
            if (obj != null) {
                this.b.onSuccess(obj);
            } else {
                this.b.onError(new NoSuchElementException());
            }
        }

        @Override
        public void onError(Throwable th) {
            if (this.f) {
                yw8.s(th);
            } else {
                this.f = true;
                this.b.onError(th);
            }
        }

        @Override
        public void onNext(Object obj) {
            if (this.f) {
                return;
            }
            if (this.e == null) {
                this.e = obj;
                return;
            }
            this.f = true;
            this.d.dispose();
            this.b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.d, rc2Var)) {
                this.d = rc2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public jd7(ld7 ld7Var, Object obj) {
        this.a = ld7Var;
        this.b = obj;
    }

    @Override
    public void q(in9 in9Var) {
        this.a.subscribe(new a(in9Var, this.b));
    }
}
