package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class d {

    private boolean f4671a;

    private boolean f4672b;

    /* JADX WARN: Illegal instructions before constructor call */
    public d() {
        boolean z10 = false;
        this(z10, z10, 3, null);
    }

    public final boolean a() {
        return this.f4672b;
    }

    public final boolean b() {
        return this.f4671a;
    }

    public final void c(boolean z10) {
        this.f4672b = z10;
    }

    public final void d(boolean z10) {
        this.f4671a = z10;
    }

    public d(boolean z10, boolean z11) {
        this.f4671a = z10;
        this.f4672b = z11;
    }

    public d(boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11);
    }
}
