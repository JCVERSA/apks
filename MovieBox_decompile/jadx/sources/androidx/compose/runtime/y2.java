package androidx.compose.runtime;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

final class y2 implements androidx.compose.runtime.tooling.b, Iterable, KMappedMarker {

    private final j2 f3765a;

    private final int f3766b;

    private final l0 f3767c;

    private final x2 f3768d;

    private final Object f3769e;

    private final Iterable f3770f = this;

    public y2(j2 j2Var, int i10, l0 l0Var, x2 x2Var) {
        this.f3765a = j2Var;
        this.f3766b = i10;
        this.f3768d = x2Var;
        this.f3769e = Integer.valueOf(l0Var.c());
    }

    @Override
    public Iterator iterator() {
        return new w2(this.f3765a, this.f3766b, this.f3767c, this.f3768d);
    }
}
