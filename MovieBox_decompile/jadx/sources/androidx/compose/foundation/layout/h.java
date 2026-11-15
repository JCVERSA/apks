package androidx.compose.foundation.layout;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

final class h implements g, f {

    private final o0.e f2547a;

    private final long f2548b;

    private final BoxScopeInstance f2549c;

    public h(o0.e eVar, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar, j10);
    }

    @Override
    public long a() {
        return this.f2548b;
    }

    @Override
    public androidx.compose.ui.f b(androidx.compose.ui.f fVar, androidx.compose.ui.b bVar) {
        return this.f2549c.b(fVar, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Intrinsics.c(this.f2547a, hVar.f2547a) && o0.b.f(this.f2548b, hVar.f2548b);
    }

    public int hashCode() {
        return (this.f2547a.hashCode() * 31) + o0.b.o(this.f2548b);
    }

    public String toString() {
        return "BoxWithConstraintsScopeImpl(density=" + this.f2547a + ", constraints=" + ((Object) o0.b.q(this.f2548b)) + ')';
    }

    private h(o0.e eVar, long j10) {
        this.f2547a = eVar;
        this.f2548b = j10;
        this.f2549c = BoxScopeInstance.f2435a;
    }
}
