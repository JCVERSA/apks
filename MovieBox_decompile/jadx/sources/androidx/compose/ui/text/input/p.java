package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class p {

    public static final a f5942h = new a(null);

    private static final p f5943i = new p(false, 0, false, 0, 0, null, null, 127, null);

    private final boolean f5944a;

    private final int f5945b;

    private final boolean f5946c;

    private final int f5947d;

    private final int f5948e;

    private final x f5949f;

    private final n0.i f5950g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final p a() {
            return p.f5943i;
        }

        private a() {
        }
    }

    public p(boolean z10, int i10, boolean z11, int i11, int i12, x xVar, n0.i iVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, i10, z11, i11, i12, xVar, iVar);
    }

    public final boolean b() {
        return this.f5946c;
    }

    public final int c() {
        return this.f5945b;
    }

    public final int d() {
        return this.f5948e;
    }

    public final int e() {
        return this.f5947d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f5944a == pVar.f5944a && t.f(this.f5945b, pVar.f5945b) && this.f5946c == pVar.f5946c && u.k(this.f5947d, pVar.f5947d) && o.l(this.f5948e, pVar.f5948e) && Intrinsics.c(this.f5949f, pVar.f5949f) && Intrinsics.c(this.f5950g, pVar.f5950g);
    }

    public final x f() {
        return this.f5949f;
    }

    public final boolean g() {
        return this.f5944a;
    }

    public int hashCode() {
        int iA = ((((((((androidx.compose.foundation.e.a(this.f5944a) * 31) + t.g(this.f5945b)) * 31) + androidx.compose.foundation.e.a(this.f5946c)) * 31) + u.l(this.f5947d)) * 31) + o.m(this.f5948e)) * 31;
        x xVar = this.f5949f;
        return ((iA + (xVar != null ? xVar.hashCode() : 0)) * 31) + this.f5950g.hashCode();
    }

    public String toString() {
        return "ImeOptions(singleLine=" + this.f5944a + ", capitalization=" + ((Object) t.h(this.f5945b)) + ", autoCorrect=" + this.f5946c + ", keyboardType=" + ((Object) u.m(this.f5947d)) + ", imeAction=" + ((Object) o.n(this.f5948e)) + ", platformImeOptions=" + this.f5949f + ", hintLocales=" + this.f5950g + ')';
    }

    private p(boolean z10, int i10, boolean z11, int i11, int i12, x xVar, n0.i iVar) {
        this.f5944a = z10;
        this.f5945b = i10;
        this.f5946c = z11;
        this.f5947d = i11;
        this.f5948e = i12;
        this.f5949f = xVar;
        this.f5950g = iVar;
    }

    public p(boolean z10, int i10, boolean z11, int i11, int i12, x xVar, n0.i iVar, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? false : z10, (i13 & 2) != 0 ? t.f5951a.b() : i10, (i13 & 4) != 0 ? true : z11, (i13 & 8) != 0 ? u.f5957a.h() : i11, (i13 & 16) != 0 ? o.f5931b.a() : i12, (i13 & 32) != 0 ? null : xVar, (i13 & 64) != 0 ? n0.i.f66852c.b() : iVar, null);
    }
}
