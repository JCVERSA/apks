package defpackage;

import io.reactivex.exceptions.CompositeException;

public final class oq0 extends mc7 {
    public final jq0 b;

    public static final class a implements rc2 {
        public final jq0 b;
        public volatile boolean c;

        public a(jq0 jq0Var) {
            this.b = jq0Var;
        }

        @Override
        public void dispose() {
            this.c = true;
            this.b.cancel();
        }

        @Override
        public boolean isDisposed() {
            return this.c;
        }
    }

    public oq0(jq0 jq0Var) {
        this.b = jq0Var;
    }

    @Override
    public void c0(pd7 pd7Var) {
        jq0 jq0VarClone = this.b.clone();
        a aVar = new a(jq0VarClone);
        pd7Var.onSubscribe(aVar);
        if (aVar.isDisposed()) {
            return;
        }
        boolean z = false;
        try {
            gu8 gu8VarExecute = jq0VarClone.execute();
            if (!aVar.isDisposed()) {
                pd7Var.onNext(gu8VarExecute);
            }
            if (aVar.isDisposed()) {
                return;
            }
            try {
                pd7Var.onComplete();
            } catch (Throwable th) {
                th = th;
                z = true;
                re3.b(th);
                if (z) {
                    yw8.s(th);
                    return;
                }
                if (aVar.isDisposed()) {
                    return;
                }
                try {
                    pd7Var.onError(th);
                } catch (Throwable th2) {
                    re3.b(th2);
                    yw8.s(new CompositeException(th, th2));
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
