package defpackage;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.CountDownLatch;

public final class wf0 extends CountDownLatch implements in9, qb1, k96 {
    public Object b;
    public Throwable c;
    public rc2 d;
    public volatile boolean e;

    public wf0() {
        super(1);
    }

    public Object a() {
        if (getCount() != 0) {
            try {
                vf0.a();
                await();
            } catch (InterruptedException e) {
                b();
                throw ExceptionHelper.d(e);
            }
        }
        Throwable th = this.c;
        if (th == null) {
            return this.b;
        }
        throw ExceptionHelper.d(th);
    }

    public void b() {
        this.e = true;
        rc2 rc2Var = this.d;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
    }

    @Override
    public void onComplete() {
        countDown();
    }

    @Override
    public void onError(Throwable th) {
        this.c = th;
        countDown();
    }

    @Override
    public void onSubscribe(rc2 rc2Var) {
        this.d = rc2Var;
        if (this.e) {
            rc2Var.dispose();
        }
    }

    @Override
    public void onSuccess(Object obj) {
        this.b = obj;
        countDown();
    }
}
