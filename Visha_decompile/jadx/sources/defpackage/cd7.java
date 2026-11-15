package defpackage;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;

public final class cd7 extends n3 {
    public final t74 c;
    public final boolean d;

    public static final class a implements pd7 {
        public final pd7 b;
        public final t74 c;
        public final boolean d;
        public final SequentialDisposable e = new SequentialDisposable();
        public boolean f;
        public boolean g;

        public a(pd7 pd7Var, t74 t74Var, boolean z) {
            this.b = pd7Var;
            this.c = t74Var;
            this.d = z;
        }

        @Override
        public void onComplete() {
            if (this.g) {
                return;
            }
            this.g = true;
            this.f = true;
            this.b.onComplete();
        }

        @Override
        public void onError(Throwable th) {
            if (this.f) {
                if (this.g) {
                    yw8.s(th);
                    return;
                } else {
                    this.b.onError(th);
                    return;
                }
            }
            this.f = true;
            if (this.d && !(th instanceof Exception)) {
                this.b.onError(th);
                return;
            }
            try {
                ld7 ld7Var = (ld7) this.c.apply(th);
                if (ld7Var != null) {
                    ld7Var.subscribe(this);
                    return;
                }
                NullPointerException nullPointerException = new NullPointerException("Observable is null");
                nullPointerException.initCause(th);
                this.b.onError(nullPointerException);
            } catch (Throwable th2) {
                re3.b(th2);
                this.b.onError(new CompositeException(th, th2));
            }
        }

        @Override
        public void onNext(Object obj) {
            if (this.g) {
                return;
            }
            this.b.onNext(obj);
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            this.e.replace(rc2Var);
        }
    }

    public cd7(ld7 ld7Var, t74 t74Var, boolean z) {
        super(ld7Var);
        this.c = t74Var;
        this.d = z;
    }

    @Override
    public void c0(pd7 pd7Var) {
        a aVar = new a(pd7Var, this.c, this.d);
        pd7Var.onSubscribe(aVar.e);
        this.b.subscribe(aVar);
    }
}
