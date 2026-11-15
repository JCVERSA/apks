package defpackage;

import java.util.concurrent.CountDownLatch;

public abstract class sf0 extends CountDownLatch implements pd7, rc2 {
    public rc2 b;
    public volatile boolean c;

    public sf0() {
        super(1);
    }

    @Override
    public final void dispose() {
        this.c = true;
        rc2 rc2Var = this.b;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
    }

    @Override
    public final boolean isDisposed() {
        return this.c;
    }

    @Override
    public final void onComplete() {
        countDown();
    }

    @Override
    public final void onSubscribe(rc2 rc2Var) {
        this.b = rc2Var;
        if (this.c) {
            rc2Var.dispose();
        }
    }
}
