package kotlinx.coroutines;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

public abstract class w1 extends LockFreeLinkedListNode implements a1, p1 {

    public JobSupport f65034d;

    @Override
    public b2 b() {
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
        JobSupport jobSupport = this.f65034d;
        if (jobSupport != null) {
            return jobSupport;
        }
        Intrinsics.y("job");
        return null;
    }

    @Override
    public String toString() {
        return p0.a(this) + '@' + p0.b(this) + "[job@" + p0.b(t()) + ']';
    }

    public abstract boolean u();

    public abstract void v(Throwable th2);

    public final void w(JobSupport jobSupport) {
        this.f65034d = jobSupport;
    }
}
