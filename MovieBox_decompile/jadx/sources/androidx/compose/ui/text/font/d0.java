package androidx.compose.ui.text.font;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d0 {

    private final h f5804a;

    private final p f5805b;

    private final int f5806c;

    private final int f5807d;

    private final Object f5808e;

    public d0(h hVar, p pVar, int i10, int i11, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(hVar, pVar, i10, i11, obj);
    }

    public static d0 b(d0 d0Var, h hVar, p pVar, int i10, int i11, Object obj, int i12, Object obj2) {
        if ((i12 & 1) != 0) {
            hVar = d0Var.f5804a;
        }
        if ((i12 & 2) != 0) {
            pVar = d0Var.f5805b;
        }
        p pVar2 = pVar;
        if ((i12 & 4) != 0) {
            i10 = d0Var.f5806c;
        }
        int i13 = i10;
        if ((i12 & 8) != 0) {
            i11 = d0Var.f5807d;
        }
        int i14 = i11;
        if ((i12 & 16) != 0) {
            obj = d0Var.f5808e;
        }
        return d0Var.a(hVar, pVar2, i13, i14, obj);
    }

    public final d0 a(h hVar, p pVar, int i10, int i11, Object obj) {
        return new d0(hVar, pVar, i10, i11, obj, null);
    }

    public final h c() {
        return this.f5804a;
    }

    public final int d() {
        return this.f5806c;
    }

    public final p e() {
        return this.f5805b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return Intrinsics.c(this.f5804a, d0Var.f5804a) && Intrinsics.c(this.f5805b, d0Var.f5805b) && n.f(this.f5806c, d0Var.f5806c) && o.h(this.f5807d, d0Var.f5807d) && Intrinsics.c(this.f5808e, d0Var.f5808e);
    }

    public int hashCode() {
        h hVar = this.f5804a;
        int iHashCode = (((((((hVar == null ? 0 : hVar.hashCode()) * 31) + this.f5805b.hashCode()) * 31) + n.g(this.f5806c)) * 31) + o.i(this.f5807d)) * 31;
        Object obj = this.f5808e;
        return iHashCode + (obj != null ? obj.hashCode() : 0);
    }

    public String toString() {
        return "TypefaceRequest(fontFamily=" + this.f5804a + ", fontWeight=" + this.f5805b + ", fontStyle=" + ((Object) n.h(this.f5806c)) + ", fontSynthesis=" + ((Object) o.j(this.f5807d)) + ", resourceLoaderCacheKey=" + this.f5808e + ')';
    }

    private d0(h hVar, p pVar, int i10, int i11, Object obj) {
        this.f5804a = hVar;
        this.f5805b = pVar;
        this.f5806c = i10;
        this.f5807d = i11;
        this.f5808e = obj;
    }
}
