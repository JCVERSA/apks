package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.w;

final class l extends w {

    private final AtomicReferenceArray f65026e;

    public l(long j10, l lVar, int i10) {
        super(j10, lVar, i10);
        this.f65026e = new AtomicReferenceArray(k.f65025f);
    }

    @Override
    public int r() {
        return k.f65025f;
    }

    @Override
    public void s(int i10, Throwable th2, CoroutineContext coroutineContext) {
        v().set(i10, k.f65024e);
        t();
    }

    public String toString() {
        return "SemaphoreSegment[id=" + this.f64918c + ", hashCode=" + hashCode() + ']';
    }

    public final AtomicReferenceArray v() {
        return this.f65026e;
    }
}
