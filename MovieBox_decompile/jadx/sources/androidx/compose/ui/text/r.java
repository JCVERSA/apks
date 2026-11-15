package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class r {

    private final int f6035a;

    private final int f6036b;

    private final long f6037c;

    private final androidx.compose.ui.text.style.n f6038d;

    private final u f6039e;

    private final androidx.compose.ui.text.style.g f6040f;

    private final int f6041g;

    private final int f6042h;

    private final androidx.compose.ui.text.style.o f6043i;

    public r(int i10, int i11, long j10, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i12, int i13, androidx.compose.ui.text.style.o oVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, j10, nVar, uVar, gVar, i12, i13, oVar);
    }

    public final r a(int i10, int i11, long j10, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i12, int i13, androidx.compose.ui.text.style.o oVar) {
        return new r(i10, i11, j10, nVar, uVar, gVar, i12, i13, oVar, null);
    }

    public final int c() {
        return this.f6042h;
    }

    public final int d() {
        return this.f6041g;
    }

    public final long e() {
        return this.f6037c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return androidx.compose.ui.text.style.h.k(this.f6035a, rVar.f6035a) && androidx.compose.ui.text.style.j.j(this.f6036b, rVar.f6036b) && o0.w.e(this.f6037c, rVar.f6037c) && Intrinsics.c(this.f6038d, rVar.f6038d) && Intrinsics.c(this.f6039e, rVar.f6039e) && Intrinsics.c(this.f6040f, rVar.f6040f) && androidx.compose.ui.text.style.e.d(this.f6041g, rVar.f6041g) && androidx.compose.ui.text.style.d.e(this.f6042h, rVar.f6042h) && Intrinsics.c(this.f6043i, rVar.f6043i);
    }

    public final androidx.compose.ui.text.style.g f() {
        return this.f6040f;
    }

    public final u g() {
        return this.f6039e;
    }

    public final int h() {
        return this.f6035a;
    }

    public int hashCode() {
        int iL = ((((androidx.compose.ui.text.style.h.l(this.f6035a) * 31) + androidx.compose.ui.text.style.j.k(this.f6036b)) * 31) + o0.w.i(this.f6037c)) * 31;
        androidx.compose.ui.text.style.n nVar = this.f6038d;
        int iHashCode = (iL + (nVar != null ? nVar.hashCode() : 0)) * 31;
        u uVar = this.f6039e;
        int iHashCode2 = (iHashCode + (uVar != null ? uVar.hashCode() : 0)) * 31;
        androidx.compose.ui.text.style.g gVar = this.f6040f;
        int iHashCode3 = (((((iHashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31) + androidx.compose.ui.text.style.e.h(this.f6041g)) * 31) + androidx.compose.ui.text.style.d.f(this.f6042h)) * 31;
        androidx.compose.ui.text.style.o oVar = this.f6043i;
        return iHashCode3 + (oVar != null ? oVar.hashCode() : 0);
    }

    public final int i() {
        return this.f6036b;
    }

    public final androidx.compose.ui.text.style.n j() {
        return this.f6038d;
    }

    public final androidx.compose.ui.text.style.o k() {
        return this.f6043i;
    }

    public final r l(r rVar) {
        return rVar == null ? this : s.a(this, rVar.f6035a, rVar.f6036b, rVar.f6037c, rVar.f6038d, rVar.f6039e, rVar.f6040f, rVar.f6041g, rVar.f6042h, rVar.f6043i);
    }

    public String toString() {
        return "ParagraphStyle(textAlign=" + ((Object) androidx.compose.ui.text.style.h.m(this.f6035a)) + ", textDirection=" + ((Object) androidx.compose.ui.text.style.j.l(this.f6036b)) + ", lineHeight=" + ((Object) o0.w.j(this.f6037c)) + ", textIndent=" + this.f6038d + ", platformStyle=" + this.f6039e + ", lineHeightStyle=" + this.f6040f + ", lineBreak=" + ((Object) androidx.compose.ui.text.style.e.i(this.f6041g)) + ", hyphens=" + ((Object) androidx.compose.ui.text.style.d.g(this.f6042h)) + ", textMotion=" + this.f6043i + ')';
    }

    private r(int i10, int i11, long j10, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i12, int i13, androidx.compose.ui.text.style.o oVar) {
        this.f6035a = i10;
        this.f6036b = i11;
        this.f6037c = j10;
        this.f6038d = nVar;
        this.f6039e = uVar;
        this.f6040f = gVar;
        this.f6041g = i12;
        this.f6042h = i13;
        this.f6043i = oVar;
        if (o0.w.e(j10, o0.w.f67429b.a()) || o0.w.h(j10) >= 0.0f) {
            return;
        }
        throw new IllegalStateException(("lineHeight can't be negative (" + o0.w.h(j10) + ')').toString());
    }

    public r(int i10, int i11, long j10, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i12, int i13, androidx.compose.ui.text.style.o oVar, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? androidx.compose.ui.text.style.h.f6091b.g() : i10, (i14 & 2) != 0 ? androidx.compose.ui.text.style.j.f6105b.f() : i11, (i14 & 4) != 0 ? o0.w.f67429b.a() : j10, (i14 & 8) != 0 ? null : nVar, (i14 & 16) != 0 ? null : uVar, (i14 & 32) != 0 ? null : gVar, (i14 & 64) != 0 ? androidx.compose.ui.text.style.e.f6057a.b() : i12, (i14 & 128) != 0 ? androidx.compose.ui.text.style.d.f6053a.c() : i13, (i14 & 256) == 0 ? oVar : null, null);
    }
}
