package androidx.compose.runtime;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

final class k2 implements androidx.compose.runtime.tooling.b, Iterable, KMappedMarker {

    private final j2 f3491a;

    private final int f3492b;

    private final int f3493c;

    public k2(j2 j2Var, int i10, int i11) {
        this.f3491a = j2Var;
        this.f3492b = i10;
        this.f3493c = i11;
    }

    private final void a() {
        if (this.f3491a.t() != this.f3493c) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public Iterator iterator() {
        a();
        this.f3491a.A(this.f3492b);
        j2 j2Var = this.f3491a;
        int i10 = this.f3492b;
        return new j0(j2Var, i10 + 1, i10 + l2.I(j2Var.o(), this.f3492b));
    }
}
