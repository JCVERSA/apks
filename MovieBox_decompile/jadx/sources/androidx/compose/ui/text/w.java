package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

public final class w {

    private final v f6143a;

    private final u f6144b;

    public w(v vVar, u uVar) {
        this.f6143a = vVar;
        this.f6144b = uVar;
    }

    public final u a() {
        return this.f6144b;
    }

    public final v b() {
        return this.f6143a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return Intrinsics.c(this.f6144b, wVar.f6144b) && Intrinsics.c(this.f6143a, wVar.f6143a);
    }

    public int hashCode() {
        v vVar = this.f6143a;
        int iHashCode = (vVar != null ? vVar.hashCode() : 0) * 31;
        u uVar = this.f6144b;
        return iHashCode + (uVar != null ? uVar.hashCode() : 0);
    }

    public String toString() {
        return "PlatformTextStyle(spanStyle=" + this.f6143a + ", paragraphSyle=" + this.f6144b + ')';
    }

    public w(boolean z10) {
        this(null, new u(z10));
    }
}
