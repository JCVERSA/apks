package kotlinx.coroutines.scheduling;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.i0;

final class h extends i0 {

    public static final h f64977a = new h();

    private h() {
    }

    @Override
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        b.f64964g.r(runnable, true, false);
    }

    @Override
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        b.f64964g.r(runnable, true, true);
    }

    @Override
    public i0 limitedParallelism(int i10, String str) {
        kotlinx.coroutines.internal.i.a(i10);
        return i10 >= g.f64974d ? kotlinx.coroutines.internal.i.b(this, str) : super.limitedParallelism(i10, str);
    }

    @Override
    public String toString() {
        return "Dispatchers.IO";
    }
}
