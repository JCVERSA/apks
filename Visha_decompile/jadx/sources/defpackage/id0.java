package defpackage;

import io.reactivex.internal.disposables.DisposableHelper;

public abstract class id0 implements pd7, fm8 {
    public final pd7 b;
    public rc2 c;
    public fm8 d;
    public boolean e;
    public int f;

    public id0(pd7 pd7Var) {
        this.b = pd7Var;
    }

    public void a() {
    }

    public boolean b() {
        return true;
    }

    public final void c(Throwable th) {
        re3.b(th);
        this.c.dispose();
        onError(th);
    }

    @Override
    public void clear() {
        this.d.clear();
    }

    public final int d(int i) {
        fm8 fm8Var = this.d;
        if (fm8Var == null || (i & 4) != 0) {
            return 0;
        }
        int iRequestFusion = fm8Var.requestFusion(i);
        if (iRequestFusion != 0) {
            this.f = iRequestFusion;
        }
        return iRequestFusion;
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
    public boolean isEmpty() {
        return this.d.isEmpty();
    }

    @Override
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override
    public void onComplete() {
        if (this.e) {
            return;
        }
        this.e = true;
        this.b.onComplete();
    }

    @Override
    public void onError(Throwable th) {
        if (this.e) {
            yw8.s(th);
        } else {
            this.e = true;
            this.b.onError(th);
        }
    }

    @Override
    public final void onSubscribe(rc2 rc2Var) {
        if (DisposableHelper.validate(this.c, rc2Var)) {
            this.c = rc2Var;
            if (rc2Var instanceof fm8) {
                this.d = (fm8) rc2Var;
            }
            if (b()) {
                this.b.onSubscribe(this);
                a();
            }
        }
    }
}
