package androidx.compose.ui.text;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.z4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class d0 {

    public static final a f5778d = new a(null);

    private static final d0 f5779e = new d0(0, 0, null, null, null, null, null, 0, null, null, null, 0, null, null, null, 0, 0, 0, null, null, null, 0, 0, null, 16777215, null);

    private final x f5780a;

    private final r f5781b;

    private final w f5782c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d0 a() {
            return d0.f5779e;
        }

        private a() {
        }
    }

    public d0(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i10, int i11, long j14, androidx.compose.ui.text.style.n nVar2, w wVar, androidx.compose.ui.text.style.g gVar, int i12, int i13, androidx.compose.ui.text.style.o oVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, pVar, nVar, oVar, hVar, str, j12, aVar, mVar, iVar, j13, iVar2, z4Var, hVar2, i10, i11, j14, nVar2, wVar, gVar, i12, i13, oVar2);
    }

    public final androidx.compose.ui.text.style.i A() {
        return this.f5780a.s();
    }

    public final int B() {
        return this.f5781b.i();
    }

    public final androidx.compose.ui.text.style.m C() {
        return this.f5780a.u();
    }

    public final androidx.compose.ui.text.style.n D() {
        return this.f5781b.j();
    }

    public final androidx.compose.ui.text.style.o E() {
        return this.f5781b.k();
    }

    public final boolean F(d0 d0Var) {
        return this == d0Var || this.f5780a.w(d0Var.f5780a);
    }

    public final boolean G(d0 d0Var) {
        return this == d0Var || (Intrinsics.c(this.f5781b, d0Var.f5781b) && this.f5780a.v(d0Var.f5780a));
    }

    public final d0 H(r rVar) {
        return new d0(L(), K().l(rVar));
    }

    public final d0 I(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i10, int i11, long j14, androidx.compose.ui.text.style.n nVar2, androidx.compose.ui.text.style.g gVar, int i12, int i13, w wVar, androidx.compose.ui.text.style.o oVar2) {
        x xVarB = SpanStyleKt.b(this.f5780a, j10, null, Float.NaN, j11, pVar, nVar, oVar, hVar, str, j12, aVar, mVar, iVar, j13, iVar2, z4Var, wVar != null ? wVar.b() : null, hVar2);
        r rVarA = s.a(this.f5781b, i10, i11, j14, nVar2, wVar != null ? wVar.a() : null, gVar, i12, i13, oVar2);
        return (this.f5780a == xVarB && this.f5781b == rVarA) ? this : new d0(xVarB, rVarA);
    }

    public final r K() {
        return this.f5781b;
    }

    public final x L() {
        return this.f5780a;
    }

    public final d0 b(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i10, int i11, long j14, androidx.compose.ui.text.style.n nVar2, w wVar, androidx.compose.ui.text.style.g gVar, int i12, int i13, androidx.compose.ui.text.style.o oVar2) {
        return new d0(new x(u1.m(j10, this.f5780a.g()) ? this.f5780a.t() : androidx.compose.ui.text.style.l.f6113a.b(j10), j11, pVar, nVar, oVar, hVar, str, j12, aVar, mVar, iVar, j13, iVar2, z4Var, wVar != null ? wVar.b() : null, hVar2, (DefaultConstructorMarker) null), new r(i10, i11, j14, nVar2, wVar != null ? wVar.a() : null, gVar, i12, i13, oVar2, null), wVar);
    }

    public final float d() {
        return this.f5780a.c();
    }

    public final long e() {
        return this.f5780a.d();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d0)) {
            return false;
        }
        d0 d0Var = (d0) obj;
        return Intrinsics.c(this.f5780a, d0Var.f5780a) && Intrinsics.c(this.f5781b, d0Var.f5781b) && Intrinsics.c(this.f5782c, d0Var.f5782c);
    }

    public final androidx.compose.ui.text.style.a f() {
        return this.f5780a.e();
    }

    public final j1 g() {
        return this.f5780a.f();
    }

    public final long h() {
        return this.f5780a.g();
    }

    public int hashCode() {
        int iHashCode = ((this.f5780a.hashCode() * 31) + this.f5781b.hashCode()) * 31;
        w wVar = this.f5782c;
        return iHashCode + (wVar != null ? wVar.hashCode() : 0);
    }

    public final z.h i() {
        return this.f5780a.h();
    }

    public final androidx.compose.ui.text.font.h j() {
        return this.f5780a.i();
    }

    public final String k() {
        return this.f5780a.j();
    }

    public final long l() {
        return this.f5780a.k();
    }

    public final androidx.compose.ui.text.font.n m() {
        return this.f5780a.l();
    }

    public final androidx.compose.ui.text.font.o n() {
        return this.f5780a.m();
    }

    public final androidx.compose.ui.text.font.p o() {
        return this.f5780a.n();
    }

    public final int p() {
        return this.f5781b.c();
    }

    public final long q() {
        return this.f5780a.o();
    }

    public final int r() {
        return this.f5781b.d();
    }

    public final long s() {
        return this.f5781b.e();
    }

    public final androidx.compose.ui.text.style.g t() {
        return this.f5781b.f();
    }

    public String toString() {
        return "TextStyle(color=" + ((Object) u1.t(h())) + ", brush=" + g() + ", alpha=" + d() + ", fontSize=" + ((Object) o0.w.j(l())) + ", fontWeight=" + o() + ", fontStyle=" + m() + ", fontSynthesis=" + n() + ", fontFamily=" + j() + ", fontFeatureSettings=" + k() + ", letterSpacing=" + ((Object) o0.w.j(q())) + ", baselineShift=" + f() + ", textGeometricTransform=" + C() + ", localeList=" + u() + ", background=" + ((Object) u1.t(e())) + ", textDecoration=" + A() + ", shadow=" + x() + ", drawStyle=" + i() + ", textAlign=" + ((Object) androidx.compose.ui.text.style.h.m(z())) + ", textDirection=" + ((Object) androidx.compose.ui.text.style.j.l(B())) + ", lineHeight=" + ((Object) o0.w.j(s())) + ", textIndent=" + D() + ", platformStyle=" + this.f5782c + ", lineHeightStyle=" + t() + ", lineBreak=" + ((Object) androidx.compose.ui.text.style.e.i(r())) + ", hyphens=" + ((Object) androidx.compose.ui.text.style.d.g(p())) + ", textMotion=" + E() + ')';
    }

    public final n0.i u() {
        return this.f5780a.p();
    }

    public final r v() {
        return this.f5781b;
    }

    public final w w() {
        return this.f5782c;
    }

    public final z4 x() {
        return this.f5780a.r();
    }

    public final x y() {
        return this.f5780a;
    }

    public final int z() {
        return this.f5781b.h();
    }

    public d0(x xVar, r rVar, w wVar) {
        this.f5780a = xVar;
        this.f5781b = rVar;
        this.f5782c = wVar;
    }

    public d0(x xVar, r rVar) {
        this(xVar, rVar, e0.b(xVar.q(), rVar.g()));
    }

    public d0(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i10, int i11, long j14, androidx.compose.ui.text.style.n nVar2, w wVar, androidx.compose.ui.text.style.g gVar, int i12, int i13, androidx.compose.ui.text.style.o oVar2, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? u1.f4349b.e() : j10, (i14 & 2) != 0 ? o0.w.f67429b.a() : j11, (i14 & 4) != 0 ? null : pVar, (i14 & 8) != 0 ? null : nVar, (i14 & 16) != 0 ? null : oVar, (i14 & 32) != 0 ? null : hVar, (i14 & 64) != 0 ? null : str, (i14 & 128) != 0 ? o0.w.f67429b.a() : j12, (i14 & 256) != 0 ? null : aVar, (i14 & 512) != 0 ? null : mVar, (i14 & 1024) != 0 ? null : iVar, (i14 & 2048) != 0 ? u1.f4349b.e() : j13, (i14 & 4096) != 0 ? null : iVar2, (i14 & 8192) != 0 ? null : z4Var, (i14 & 16384) != 0 ? null : hVar2, (i14 & 32768) != 0 ? androidx.compose.ui.text.style.h.f6091b.g() : i10, (i14 & 65536) != 0 ? androidx.compose.ui.text.style.j.f6105b.f() : i11, (i14 & 131072) != 0 ? o0.w.f67429b.a() : j14, (i14 & 262144) != 0 ? null : nVar2, (i14 & 524288) != 0 ? null : wVar, (i14 & 1048576) != 0 ? null : gVar, (i14 & 2097152) != 0 ? androidx.compose.ui.text.style.e.f6057a.b() : i12, (i14 & 4194304) != 0 ? androidx.compose.ui.text.style.d.f6053a.c() : i13, (i14 & 8388608) != 0 ? null : oVar2, null);
    }

    private d0(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, z.h hVar2, int i10, int i11, long j14, androidx.compose.ui.text.style.n nVar2, w wVar, androidx.compose.ui.text.style.g gVar, int i12, int i13, androidx.compose.ui.text.style.o oVar2) {
        this(new x(j10, j11, pVar, nVar, oVar, hVar, str, j12, aVar, mVar, iVar, j13, iVar2, z4Var, wVar != null ? wVar.b() : null, hVar2, (DefaultConstructorMarker) null), new r(i10, i11, j14, nVar2, wVar != null ? wVar.a() : null, gVar, i12, i13, oVar2, null), wVar);
    }
}
