package androidx.compose.runtime;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

final class j0 implements Iterator, KMappedMarker {

    private final j2 f3462a;

    private final int f3463b;

    private int f3464c;

    private final int f3465d;

    public j0(j2 j2Var, int i10, int i11) {
        this.f3462a = j2Var;
        this.f3463b = i11;
        this.f3464c = i10;
        this.f3465d = j2Var.t();
        if (j2Var.u()) {
            throw new ConcurrentModificationException();
        }
    }

    private final void c() {
        if (this.f3462a.t() != this.f3465d) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public androidx.compose.runtime.tooling.b next() {
        c();
        int i10 = this.f3464c;
        this.f3464c = l2.I(this.f3462a.o(), i10) + i10;
        return new k2(this.f3462a, i10, this.f3465d);
    }

    @Override
    public boolean hasNext() {
        return this.f3464c < this.f3463b;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
