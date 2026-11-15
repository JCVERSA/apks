package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

public final class i0 implements CoroutineContext.Key {

    private final ThreadLocal f64893a;

    public i0(ThreadLocal threadLocal) {
        this.f64893a = threadLocal;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i0) && Intrinsics.c(this.f64893a, ((i0) obj).f64893a);
    }

    public int hashCode() {
        return this.f64893a.hashCode();
    }

    public String toString() {
        return "ThreadLocalKey(threadLocal=" + this.f64893a + ')';
    }
}
