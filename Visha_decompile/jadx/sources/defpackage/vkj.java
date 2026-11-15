package defpackage;

import com.google.android.gms.internal.play_billing.r;
import com.google.android.gms.internal.play_billing.t;
import com.google.android.gms.internal.play_billing.u;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class vkj implements ofg {
    public final WeakReference b;
    public final t c = new ujj(this);

    public vkj(u uVar) {
        this.b = new WeakReference(uVar);
    }

    public final boolean a(Object obj) {
        return this.c.d(obj);
    }

    @Override
    public final void b(Runnable runnable, Executor executor) {
        this.c.b(runnable, executor);
    }

    public final boolean c(Throwable th) {
        r rVar = new r(th);
        e5g e5gVar = t.g;
        t tVar = this.c;
        if (!e5gVar.d(tVar, null, rVar)) {
            return false;
        }
        t.c(tVar);
        return true;
    }

    @Override
    public final boolean cancel(boolean z) {
        u uVar = (u) this.b.get();
        boolean zCancel = this.c.cancel(z);
        if (!zCancel || uVar == null) {
            return zCancel;
        }
        uVar.a();
        return true;
    }

    @Override
    public final Object get() {
        return this.c.get();
    }

    @Override
    public final boolean isCancelled() {
        return this.c.b instanceof xug;
    }

    @Override
    public final boolean isDone() {
        return this.c.isDone();
    }

    public final String toString() {
        return this.c.toString();
    }

    @Override
    public final Object get(long j, TimeUnit timeUnit) {
        return this.c.get(j, timeUnit);
    }
}
