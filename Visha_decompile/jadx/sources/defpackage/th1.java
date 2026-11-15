package defpackage;

import kotlin.coroutines.d;

public final class th1 implements nk1 {
    public final d b;

    public th1(d dVar) {
        this.b = dVar;
    }

    @Override
    public d getCoroutineContext() {
        return this.b;
    }

    public String toString() {
        return "CoroutineScope(coroutineContext=" + getCoroutineContext() + ')';
    }
}
