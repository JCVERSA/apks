package androidx.compose.ui.window;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class c {

    private final boolean f6249a;

    private final boolean f6250b;

    private final SecureFlagPolicy f6251c;

    private final boolean f6252d;

    private final boolean f6253e;

    public c() {
        this(false, false, null, false, false, 31, null);
    }

    public final boolean a() {
        return this.f6253e;
    }

    public final boolean b() {
        return this.f6249a;
    }

    public final boolean c() {
        return this.f6250b;
    }

    public final SecureFlagPolicy d() {
        return this.f6251c;
    }

    public final boolean e() {
        return this.f6252d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f6249a == cVar.f6249a && this.f6250b == cVar.f6250b && this.f6251c == cVar.f6251c && this.f6252d == cVar.f6252d && this.f6253e == cVar.f6253e;
    }

    public int hashCode() {
        return (((((((androidx.compose.foundation.e.a(this.f6249a) * 31) + androidx.compose.foundation.e.a(this.f6250b)) * 31) + this.f6251c.hashCode()) * 31) + androidx.compose.foundation.e.a(this.f6252d)) * 31) + androidx.compose.foundation.e.a(this.f6253e);
    }

    public c(boolean z10, boolean z11, SecureFlagPolicy secureFlagPolicy, boolean z12, boolean z13) {
        this.f6249a = z10;
        this.f6250b = z11;
        this.f6251c = secureFlagPolicy;
        this.f6252d = z12;
        this.f6253e = z13;
    }

    public c(boolean z10, boolean z11, SecureFlagPolicy secureFlagPolicy, boolean z12, boolean z13, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10, (i10 & 2) != 0 ? true : z11, (i10 & 4) != 0 ? SecureFlagPolicy.Inherit : secureFlagPolicy, (i10 & 8) != 0 ? true : z12, (i10 & 16) != 0 ? true : z13);
    }

    public c(boolean z10, boolean z11, boolean z12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? true : z10, (i10 & 2) != 0 ? true : z11, (i10 & 4) != 0 ? true : z12);
    }

    public c(boolean z10, boolean z11, boolean z12) {
        this(z10, z11, SecureFlagPolicy.Inherit, z12, true);
    }
}
