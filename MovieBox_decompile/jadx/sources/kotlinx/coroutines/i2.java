package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

class i2 extends a {
    public i2(CoroutineContext coroutineContext, boolean z10) {
        super(coroutineContext, true, z10);
    }

    @Override
    protected boolean handleJobException(Throwable th2) {
        k0.a(getContext(), th2);
        return true;
    }
}
