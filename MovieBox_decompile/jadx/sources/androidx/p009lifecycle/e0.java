package androidx.p009lifecycle;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;

public final class e0 extends i0 {

    public final i f9275a = new i();

    @Override
    public void dispatch(CoroutineContext context, Runnable block) {
        Intrinsics.h(context, "context");
        Intrinsics.h(block, "block");
        this.f9275a.c(context, block);
    }

    @Override
    public boolean isDispatchNeeded(CoroutineContext context) {
        Intrinsics.h(context, "context");
        if (y0.c().r().isDispatchNeeded(context)) {
            return true;
        }
        return !this.f9275a.b();
    }
}
