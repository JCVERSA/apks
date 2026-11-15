package defpackage;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;

public final class pc7 extends n3 {
    public final zf1 c;
    public final zf1 d;
    public final d5 e;
    public final d5 f;

    public static final class a implements pd7, rc2 {
        public final pd7 b;
        public final zf1 c;
        public final zf1 d;
        public final d5 e;
        public final d5 f;
        public rc2 g;
        public boolean h;

        public a(pd7 pd7Var, zf1 zf1Var, zf1 zf1Var2, d5 d5Var, d5 d5Var2) {
            this.b = pd7Var;
            this.c = zf1Var;
            this.d = zf1Var2;
            this.e = d5Var;
            this.f = d5Var2;
        }

        @Override
        public void dispose() {
            this.g.dispose();
        }

        @Override
        public boolean isDisposed() {
            return this.g.isDisposed();
        }

        @Override
        public void onComplete() {
            if (this.h) {
                return;
            }
            try {
                this.e.run();
                this.h = true;
                this.b.onComplete();
                try {
                    this.f.run();
                } catch (Throwable th) {
                    re3.b(th);
                    yw8.s(th);
                }
            } catch (Throwable th2) {
                re3.b(th2);
                onError(th2);
            }
        }

        @Override
        public void onError(Throwable th) {
            if (this.h) {
                yw8.s(th);
                return;
            }
            this.h = true;
            try {
                this.d.accept(th);
            } catch (Throwable th2) {
                re3.b(th2);
                th = new CompositeException(th, th2);
            }
            this.b.onError(th);
            try {
                this.f.run();
            } catch (Throwable th3) {
                re3.b(th3);
                yw8.s(th3);
            }
        }

        @Override
        public void onNext(Object obj) {
            if (this.h) {
                return;
            }
            try {
                this.c.accept(obj);
                this.b.onNext(obj);
            } catch (Throwable th) {
                re3.b(th);
                this.g.dispose();
                onError(th);
            }
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
            if (DisposableHelper.validate(this.g, rc2Var)) {
                this.g = rc2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public pc7(ld7 ld7Var, zf1 zf1Var, zf1 zf1Var2, d5 d5Var, d5 d5Var2) {
        super(ld7Var);
        this.c = zf1Var;
        this.d = zf1Var2;
        this.e = d5Var;
        this.f = d5Var2;
    }

    @Override
    public void c0(pd7 pd7Var) {
        this.b.subscribe(new a(pd7Var, this.c, this.d, this.e, this.f));
    }
}
