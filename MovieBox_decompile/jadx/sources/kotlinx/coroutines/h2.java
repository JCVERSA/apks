package kotlinx.coroutines;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

final class h2 extends w1 {

    private final Continuation f64867e;

    public h2(Continuation continuation) {
        this.f64867e = continuation;
    }

    @Override
    public boolean u() {
        return false;
    }

    @Override
    public void v(Throwable th2) {
        Continuation continuation = this.f64867e;
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m453constructorimpl(Unit.f64096a));
    }
}
