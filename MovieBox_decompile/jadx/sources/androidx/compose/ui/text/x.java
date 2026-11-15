package androidx.compose.ui.text;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.z4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class x {

    private final androidx.compose.ui.text.style.l f6145a;

    private final long f6146b;

    private final androidx.compose.ui.text.font.p f6147c;

    private final androidx.compose.ui.text.font.n f6148d;

    private final androidx.compose.ui.text.font.o f6149e;

    private final androidx.compose.ui.text.font.h f6150f;

    private final String f6151g;

    private final long f6152h;

    private final androidx.compose.ui.text.style.a f6153i;

    private final androidx.compose.ui.text.style.m f6154j;

    private final n0.i f6155k;

    private final long f6156l;

    private final androidx.compose.ui.text.style.i f6157m;

    private final z4 f6158n;

    private final v f6159o;

    private final z.h f6160p;

    public x(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, pVar, nVar, oVar, hVar, str, j12, aVar, mVar, iVar, j13, iVar2, z4Var, vVar, hVar2);
    }

    public final x a(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2) {
        return new x(u1.m(j10, g()) ? this.f6145a : androidx.compose.ui.text.style.l.f6113a.b(j10), j11, pVar, nVar, oVar, hVar, str, j12, aVar, mVar, iVar, j13, iVar2, z4Var, vVar, hVar2, (DefaultConstructorMarker) null);
    }

    public final float c() {
        return this.f6145a.getAlpha();
    }

    public final long d() {
        return this.f6156l;
    }

    public final androidx.compose.ui.text.style.a e() {
        return this.f6153i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return v(xVar) && w(xVar);
    }

    public final j1 f() {
        return this.f6145a.d();
    }

    public final long g() {
        return this.f6145a.a();
    }

    public final z.h h() {
        return this.f6160p;
    }

    public int hashCode() {
        int iS = u1.s(g()) * 31;
        j1 j1VarF = f();
        int iHashCode = (((((iS + (j1VarF != null ? j1VarF.hashCode() : 0)) * 31) + Float.floatToIntBits(c())) * 31) + o0.w.i(this.f6146b)) * 31;
        androidx.compose.ui.text.font.p pVar = this.f6147c;
        int iHashCode2 = (iHashCode + (pVar != null ? pVar.hashCode() : 0)) * 31;
        androidx.compose.ui.text.font.n nVar = this.f6148d;
        int iG = (iHashCode2 + (nVar != null ? androidx.compose.ui.text.font.n.g(nVar.i()) : 0)) * 31;
        androidx.compose.ui.text.font.o oVar = this.f6149e;
        int i10 = (iG + (oVar != null ? androidx.compose.ui.text.font.o.i(oVar.k()) : 0)) * 31;
        androidx.compose.ui.text.font.h hVar = this.f6150f;
        int iHashCode3 = (i10 + (hVar != null ? hVar.hashCode() : 0)) * 31;
        String str = this.f6151g;
        int iHashCode4 = (((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31) + o0.w.i(this.f6152h)) * 31;
        androidx.compose.ui.text.style.a aVar = this.f6153i;
        int iF = (iHashCode4 + (aVar != null ? androidx.compose.ui.text.style.a.f(aVar.h()) : 0)) * 31;
        androidx.compose.ui.text.style.m mVar = this.f6154j;
        int iHashCode5 = (iF + (mVar != null ? mVar.hashCode() : 0)) * 31;
        n0.i iVar = this.f6155k;
        int iHashCode6 = (((iHashCode5 + (iVar != null ? iVar.hashCode() : 0)) * 31) + u1.s(this.f6156l)) * 31;
        androidx.compose.ui.text.style.i iVar2 = this.f6157m;
        int iHashCode7 = (iHashCode6 + (iVar2 != null ? iVar2.hashCode() : 0)) * 31;
        z4 z4Var = this.f6158n;
        int iHashCode8 = (iHashCode7 + (z4Var != null ? z4Var.hashCode() : 0)) * 31;
        v vVar = this.f6159o;
        int iHashCode9 = (iHashCode8 + (vVar != null ? vVar.hashCode() : 0)) * 31;
        z.h hVar2 = this.f6160p;
        return iHashCode9 + (hVar2 != null ? hVar2.hashCode() : 0);
    }

    public final androidx.compose.ui.text.font.h i() {
        return this.f6150f;
    }

    public final String j() {
        return this.f6151g;
    }

    public final long k() {
        return this.f6146b;
    }

    public final androidx.compose.ui.text.font.n l() {
        return this.f6148d;
    }

    public final androidx.compose.ui.text.font.o m() {
        return this.f6149e;
    }

    public final androidx.compose.ui.text.font.p n() {
        return this.f6147c;
    }

    public final long o() {
        return this.f6152h;
    }

    public final n0.i p() {
        return this.f6155k;
    }

    public final v q() {
        return this.f6159o;
    }

    public final z4 r() {
        return this.f6158n;
    }

    public final androidx.compose.ui.text.style.i s() {
        return this.f6157m;
    }

    public final androidx.compose.ui.text.style.l t() {
        return this.f6145a;
    }

    public String toString() {
        return "SpanStyle(color=" + ((Object) u1.t(g())) + ", brush=" + f() + ", alpha=" + c() + ", fontSize=" + ((Object) o0.w.j(this.f6146b)) + ", fontWeight=" + this.f6147c + ", fontStyle=" + this.f6148d + ", fontSynthesis=" + this.f6149e + ", fontFamily=" + this.f6150f + ", fontFeatureSettings=" + this.f6151g + ", letterSpacing=" + ((Object) o0.w.j(this.f6152h)) + ", baselineShift=" + this.f6153i + ", textGeometricTransform=" + this.f6154j + ", localeList=" + this.f6155k + ", background=" + ((Object) u1.t(this.f6156l)) + ", textDecoration=" + this.f6157m + ", shadow=" + this.f6158n + ", platformStyle=" + this.f6159o + ", drawStyle=" + this.f6160p + ')';
    }

    public final androidx.compose.ui.text.style.m u() {
        return this.f6154j;
    }

    public final boolean v(x xVar) {
        if (this == xVar) {
            return true;
        }
        return o0.w.e(this.f6146b, xVar.f6146b) && Intrinsics.c(this.f6147c, xVar.f6147c) && Intrinsics.c(this.f6148d, xVar.f6148d) && Intrinsics.c(this.f6149e, xVar.f6149e) && Intrinsics.c(this.f6150f, xVar.f6150f) && Intrinsics.c(this.f6151g, xVar.f6151g) && o0.w.e(this.f6152h, xVar.f6152h) && Intrinsics.c(this.f6153i, xVar.f6153i) && Intrinsics.c(this.f6154j, xVar.f6154j) && Intrinsics.c(this.f6155k, xVar.f6155k) && u1.m(this.f6156l, xVar.f6156l) && Intrinsics.c(this.f6159o, xVar.f6159o);
    }

    public final boolean w(x xVar) {
        return Intrinsics.c(this.f6145a, xVar.f6145a) && Intrinsics.c(this.f6157m, xVar.f6157m) && Intrinsics.c(this.f6158n, xVar.f6158n) && Intrinsics.c(this.f6160p, xVar.f6160p);
    }

    public final x x(x xVar) {
        return xVar == null ? this : SpanStyleKt.b(this, xVar.f6145a.a(), xVar.f6145a.d(), xVar.f6145a.getAlpha(), xVar.f6146b, xVar.f6147c, xVar.f6148d, xVar.f6149e, xVar.f6150f, xVar.f6151g, xVar.f6152h, xVar.f6153i, xVar.f6154j, xVar.f6155k, xVar.f6156l, xVar.f6157m, xVar.f6158n, xVar.f6159o, xVar.f6160p);
    }

    public x(androidx.compose.ui.text.style.l lVar, long j10, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j11, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j12, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(lVar, j10, pVar, nVar, oVar, hVar, str, j11, aVar, mVar, iVar, j12, iVar2, z4Var, vVar, hVar2);
    }

    private x(androidx.compose.ui.text.style.l lVar, long j10, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j11, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j12, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2) {
        this.f6145a = lVar;
        this.f6146b = j10;
        this.f6147c = pVar;
        this.f6148d = nVar;
        this.f6149e = oVar;
        this.f6150f = hVar;
        this.f6151g = str;
        this.f6152h = j11;
        this.f6153i = aVar;
        this.f6154j = mVar;
        this.f6155k = iVar;
        this.f6156l = j12;
        this.f6157m = iVar2;
        this.f6158n = z4Var;
        this.f6159o = vVar;
        this.f6160p = hVar2;
    }

    public x(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? u1.f4349b.e() : j10, (i10 & 2) != 0 ? o0.w.f67429b.a() : j11, (i10 & 4) != 0 ? null : pVar, (i10 & 8) != 0 ? null : nVar, (i10 & 16) != 0 ? null : oVar, (i10 & 32) != 0 ? null : hVar, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? o0.w.f67429b.a() : j12, (i10 & 256) != 0 ? null : aVar, (i10 & 512) != 0 ? null : mVar, (i10 & 1024) != 0 ? null : iVar, (i10 & 2048) != 0 ? u1.f4349b.e() : j13, (i10 & 4096) != 0 ? null : iVar2, (i10 & 8192) != 0 ? null : z4Var, (i10 & 16384) != 0 ? null : vVar, (i10 & 32768) != 0 ? null : hVar2, (DefaultConstructorMarker) null);
    }

    private x(long j10, long j11, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j12, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j13, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2) {
        this(androidx.compose.ui.text.style.l.f6113a.b(j10), j11, pVar, nVar, oVar, hVar, str, j12, aVar, mVar, iVar, j13, iVar2, z4Var, vVar, hVar2, (DefaultConstructorMarker) null);
    }
}
