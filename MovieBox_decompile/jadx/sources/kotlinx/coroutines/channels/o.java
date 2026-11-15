package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.k0;

final class o extends e implements p {
    public o(CoroutineContext coroutineContext, d dVar) {
        super(coroutineContext, dVar, true, true);
    }

    @Override
    public void onCompleted(Unit unit) {
        s.a.a(U(), null, 1, null);
    }

    @Override
    public boolean isActive() {
        return super.isActive();
    }

    @Override
    protected void onCancelled(Throwable th2, boolean z10) {
        if (U().i(th2) || z10) {
            return;
        }
        k0.a(getF64063a(), th2);
    }
}
