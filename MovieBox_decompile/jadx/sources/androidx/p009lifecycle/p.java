package androidx.p009lifecycle;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.t1;

public final class p {

    private final Lifecycle f9322a;

    private final Lifecycle.State f9323b;

    private final i f9324c;

    private final r f9325d;

    public p(Lifecycle lifecycle, Lifecycle.State minState, i dispatchQueue, final t1 parentJob) {
        Intrinsics.h(lifecycle, "lifecycle");
        Intrinsics.h(minState, "minState");
        Intrinsics.h(dispatchQueue, "dispatchQueue");
        Intrinsics.h(parentJob, "parentJob");
        this.f9322a = lifecycle;
        this.f9323b = minState;
        this.f9324c = dispatchQueue;
        r rVar = new r() {
            @Override
            public final void onStateChanged(u uVar, Lifecycle.Event event) {
                p.c(this.f9317a, parentJob, uVar, event);
            }
        };
        this.f9325d = rVar;
        if (lifecycle.b() != Lifecycle.State.DESTROYED) {
            lifecycle.a(rVar);
        } else {
            t1.a.b(parentJob, null, 1, null);
            b();
        }
    }

    public static final void c(p this$0, t1 parentJob, u source, Lifecycle.Event event) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(parentJob, "$parentJob");
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "<anonymous parameter 1>");
        if (source.getLifecycle().b() == Lifecycle.State.DESTROYED) {
            t1.a.b(parentJob, null, 1, null);
            this$0.b();
        } else if (source.getLifecycle().b().compareTo(this$0.f9323b) < 0) {
            this$0.f9324c.h();
        } else {
            this$0.f9324c.i();
        }
    }

    public final void b() {
        this.f9322a.d(this.f9325d);
        this.f9324c.g();
    }
}
