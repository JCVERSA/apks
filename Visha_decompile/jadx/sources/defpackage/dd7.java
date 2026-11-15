package defpackage;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;

public final class dd7 extends n3 {
    public final t74 c;

    public static final class a implements pd7, rc2 {
        public final pd7 b;
        public final t74 c;
        public rc2 d;

        public a(pd7 pd7Var, t74 t74Var) {
            this.b = pd7Var;
            this.c = t74Var;
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
            try {
                Object objApply = this.c.apply(th);
                if (objApply != null) {
                    this.b.onNext(objApply);
                    this.b.onComplete();
                } else {
                    NullPointerException nullPointerException = new NullPointerException("The supplied value is null");
                    nullPointerException.initCause(th);
                    this.b.onError(nullPointerException);
                }
            } catch (Throwable th2) {
                re3.b(th2);
                this.b.onError(new CompositeException(th, th2));
            }
        }

        @Override
        public void onNext(Object obj) {
            this.b.onNext(obj);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.d, rc2Var)) {
                this.d = rc2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public dd7(ld7 ld7Var, t74 t74Var) {
        super(ld7Var);
        this.c = t74Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new a(pd7Var, this.c));
    }
}
