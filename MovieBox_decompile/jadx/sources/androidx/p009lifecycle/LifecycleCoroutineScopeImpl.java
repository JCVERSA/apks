package androidx.p009lifecycle;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class LifecycleCoroutineScopeImpl extends LifecycleCoroutineScope implements r {

    private final Lifecycle f9220a;

    private final CoroutineContext f9221b;

    public LifecycleCoroutineScopeImpl(Lifecycle lifecycle, CoroutineContext coroutineContext) {
        Intrinsics.h(lifecycle, "lifecycle");
        Intrinsics.h(coroutineContext, "coroutineContext");
        this.f9220a = lifecycle;
        this.f9221b = coroutineContext;
        if (a().b() == Lifecycle.State.DESTROYED) {
            JobKt__JobKt.e(getCoroutineContext(), null, 1, null);
        }
    }

    @Override
    public Lifecycle a() {
        return this.f9220a;
    }

    public final void c() {
        k.d(this, y0.c().r(), null, new LifecycleCoroutineScopeImpl$register$1(this, null), 2, null);
    }

    @Override
    public CoroutineContext getCoroutineContext() {
        return this.f9221b;
    }

    @Override
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (a().b().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            a().d(this);
            JobKt__JobKt.e(getCoroutineContext(), null, 1, null);
        }
    }
}
