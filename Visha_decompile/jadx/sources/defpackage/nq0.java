package defpackage;

import io.reactivex.exceptions.CompositeException;

public final class nq0 extends mc7 {
    public final jq0 b;

    public static final class a implements rc2, tq0 {
        public final jq0 b;
        public final pd7 c;
        public volatile boolean d;
        public boolean e = false;

        public a(jq0 jq0Var, pd7 pd7Var) {
            this.b = jq0Var;
            this.c = pd7Var;
        }

        @Override
        public void dispose() {
            this.d = true;
            this.b.cancel();
        }

        @Override
        public boolean isDisposed() {
            return this.d;
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
            if (jq0Var.isCanceled()) {
                return;
            }
            try {
                this.c.onError(th);
            } catch (Throwable th2) {
                re3.b(th2);
                yw8.s(new CompositeException(th, th2));
            }
        }

        @Override
        public void onResponse(jq0 jq0Var, gu8 gu8Var) {
            if (this.d) {
                return;
            }
            try {
                this.c.onNext(gu8Var);
                if (this.d) {
                    return;
                }
                this.e = true;
                this.c.onComplete();
            } catch (Throwable th) {
                re3.b(th);
                if (this.e) {
                    yw8.s(th);
                    return;
                }
                if (this.d) {
                    return;
                }
                try {
                    this.c.onError(th);
                } catch (Throwable th2) {
                    re3.b(th2);
                    yw8.s(new CompositeException(th, th2));
                }
            }
        }
    }

    public nq0(jq0 jq0Var) {
        this.b = jq0Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        jq0 jq0VarClone = this.b.clone();
        a aVar = new a(jq0VarClone, pd7Var);
        pd7Var.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        jq0VarClone.enqueue(aVar);
    }
}
