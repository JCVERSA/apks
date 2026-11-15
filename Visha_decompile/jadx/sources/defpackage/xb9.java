package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.d;

public final class xb9 extends oa9 {
    public final AtomicReferenceArray f;

    public xb9(long j, xb9 xb9Var, int i) {
        super(j, xb9Var, i);
        this.f = new AtomicReferenceArray(wb9.f);
    }

    @Override
    public int r() {
        return wb9.f;
    }

    @Override
    public void s(int i, Throwable th, d dVar) {
        v().set(i, wb9.e);
        t();
    }

    public String toString() {
        return "SemaphoreSegment[id=" + this.d + ", hashCode=" + hashCode() + ']';
    }

    public final AtomicReferenceArray v() {
        return this.f;
    }
}
