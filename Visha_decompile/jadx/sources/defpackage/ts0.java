package defpackage;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.d;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.a;

public abstract class ts0 extends a implements ps0 {
    public final ps0 b;

    public ts0(d dVar, ps0 ps0Var, boolean z, boolean z2) {
        super(dVar, z, z2);
        this.b = ps0Var;
    }

    public final ps0 V() {
        return this;
    }

    public final ps0 W() {
        return this.b;
    }

    @Override
    public void a(e74 e74Var) {
        this.b.a(e74Var);
    }

    @Override
    public Object c(wh1 wh1Var) {
        return this.b.c(wh1Var);
    }

    @Override
    public final void cancel(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    @Override
    public void cancelInternal(Throwable th) {
        CancellationException cancellationException$default = JobSupport.toCancellationException$default(this, th, null, 1, null);
        this.b.cancel(cancellationException$default);
        cancelCoroutine(cancellationException$default);
    }

    @Override
    public Object f(Object obj) {
        return this.b.f(obj);
    }

    @Override
    public Object i() {
        return this.b.i();
    }

    @Override
    public bu0 iterator() {
        return this.b.iterator();
    }

    @Override
    public boolean j() {
        return this.b.j();
    }

    @Override
    public Object k(wh1 wh1Var) {
        Object objK = this.b.k(wh1Var);
        z45.f();
        return objK;
    }

    @Override
    public Object l(Object obj, wh1 wh1Var) {
        return this.b.l(obj, wh1Var);
    }

    @Override
    public boolean m(Throwable th) {
        return this.b.m(th);
    }

    @Override
    public void cancel() {
        cancelInternal(new JobCancellationException(cancellationExceptionMessage(), null, this));
    }

    @Override
    public final boolean cancel(Throwable th) {
        cancelInternal(new JobCancellationException(cancellationExceptionMessage(), null, this));
        return true;
    }
}
