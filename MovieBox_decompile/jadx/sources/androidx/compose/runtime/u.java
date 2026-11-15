package androidx.compose.runtime;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class u {

    private boolean f3742a;

    /* JADX WARN: Multi-variable type inference failed */
    public u() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public final androidx.compose.runtime.tooling.c a() {
        return null;
    }

    public final boolean b() {
        return this.f3742a;
    }

    public u(androidx.compose.runtime.tooling.c cVar, boolean z10) {
        this.f3742a = z10;
    }

    public u(androidx.compose.runtime.tooling.c cVar, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : cVar, (i10 & 2) != 0 ? false : z10);
    }

    public final void c(androidx.compose.runtime.tooling.c cVar) {
    }
}
