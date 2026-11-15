package androidx.compose.ui.node;

import kotlin.jvm.internal.Intrinsics;

final class c1 implements z0 {

    private final androidx.compose.ui.layout.v f5073a;

    private final LookaheadCapablePlaceable f5074b;

    public c1(androidx.compose.ui.layout.v vVar, LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        this.f5073a = vVar;
        this.f5074b = lookaheadCapablePlaceable;
    }

    public final LookaheadCapablePlaceable a() {
        return this.f5074b;
    }

    public final androidx.compose.ui.layout.v b() {
        return this.f5073a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c1)) {
            return false;
        }
        c1 c1Var = (c1) obj;
        return Intrinsics.c(this.f5073a, c1Var.f5073a) && Intrinsics.c(this.f5074b, c1Var.f5074b);
    }

    public int hashCode() {
        return (this.f5073a.hashCode() * 31) + this.f5074b.hashCode();
    }

    @Override
    public boolean isValidOwnerScope() {
        return this.f5074b.W0().F();
    }

    public String toString() {
        return "PlaceableResult(result=" + this.f5073a + ", placeable=" + this.f5074b + ')';
    }
}
