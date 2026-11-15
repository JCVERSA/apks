package defpackage;

import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

public abstract class o95 extends LockFreeLinkedListNode implements uc2, dz4 {
    public JobSupport e;

    @Override
    public f17 b() {
        return null;
    }

    @Override
    public void dispose() {
        t().removeNode$kotlinx_coroutines_core(this);
    }

    @Override
    public boolean isActive() {
        return true;
    }

    public final JobSupport t() {
        JobSupport jobSupport = this.e;
        if (jobSupport != null) {
            return jobSupport;
        }
        y45.B("job");
        return null;
    }

    @Override
    public String toString() {
        return qt1.a(this) + '@' + qt1.b(this) + "[job@" + qt1.b(t()) + ']';
    }

    public abstract boolean u();

    public abstract void v(Throwable th);

    public final void w(JobSupport jobSupport) {
        this.e = jobSupport;
    }
}
