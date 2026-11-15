package defpackage;

import kotlin.coroutines.d;
import kotlinx.coroutines.c;
import kotlinx.coroutines.scheduling.a;

public final class cgb extends c {
    public static final cgb b = new cgb();

    @Override
    public void dispatch(d dVar, Runnable runnable) {
        d42.h.k(runnable, true, false);
    }

    @Override
    public void dispatchYield(d dVar, Runnable runnable) {
        d42.h.k(runnable, true, true);
    }

    @Override
    public c limitedParallelism(int i, String str) {
        bl5.a(i);
        return i >= a.d ? bl5.b(this, str) : super.limitedParallelism(i, str);
    }

    @Override
    public String toString() {
        return "Dispatchers.IO";
    }
}
