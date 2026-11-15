package androidx.compose.ui.text;

import androidx.compose.ui.text.style.ResolvedTextDirection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class z {

    private final y f6172a;

    private final MultiParagraph f6173b;

    private final long f6174c;

    private final float f6175d;

    private final float f6176e;

    private final List f6177f;

    public z(y yVar, MultiParagraph multiParagraph, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(yVar, multiParagraph, j10);
    }

    public static z b(z zVar, y yVar, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            yVar = zVar.f6172a;
        }
        if ((i10 & 2) != 0) {
            j10 = zVar.f6174c;
        }
        return zVar.a(yVar, j10);
    }

    public static int o(z zVar, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return zVar.n(i10, z10);
    }

    public final z a(y yVar, long j10) {
        return new z(yVar, this.f6173b, j10, null);
    }

    public final ResolvedTextDirection c(int i10) {
        return this.f6173b.c(i10);
    }

    public final y.i d(int i10) {
        return this.f6173b.d(i10);
    }

    public final y.i e(int i10) {
        return this.f6173b.e(i10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return Intrinsics.c(this.f6172a, zVar.f6172a) && Intrinsics.c(this.f6173b, zVar.f6173b) && o0.t.e(this.f6174c, zVar.f6174c) && this.f6175d == zVar.f6175d && this.f6176e == zVar.f6176e && Intrinsics.c(this.f6177f, zVar.f6177f);
    }

    public final boolean f() {
        return this.f6173b.f() || ((float) o0.t.f(this.f6174c)) < this.f6173b.h();
    }

    public final boolean g() {
        return ((float) o0.t.g(this.f6174c)) < this.f6173b.w();
    }

    public final float h() {
        return this.f6175d;
    }

    public int hashCode() {
        return (((((((((this.f6172a.hashCode() * 31) + this.f6173b.hashCode()) * 31) + o0.t.h(this.f6174c)) * 31) + Float.floatToIntBits(this.f6175d)) * 31) + Float.floatToIntBits(this.f6176e)) * 31) + this.f6177f.hashCode();
    }

    public final boolean i() {
        return g() || f();
    }

    public final float j() {
        return this.f6176e;
    }

    public final y k() {
        return this.f6172a;
    }

    public final float l(int i10) {
        return this.f6173b.k(i10);
    }

    public final int m() {
        return this.f6173b.l();
    }

    public final int n(int i10, boolean z10) {
        return this.f6173b.m(i10, z10);
    }

    public final int p(int i10) {
        return this.f6173b.n(i10);
    }

    public final int q(float f10) {
        return this.f6173b.o(f10);
    }

    public final float r(int i10) {
        return this.f6173b.p(i10);
    }

    public final float s(int i10) {
        return this.f6173b.q(i10);
    }

    public final int t(int i10) {
        return this.f6173b.r(i10);
    }

    public String toString() {
        return "TextLayoutResult(layoutInput=" + this.f6172a + ", multiParagraph=" + this.f6173b + ", size=" + ((Object) o0.t.i(this.f6174c)) + ", firstBaseline=" + this.f6175d + ", lastBaseline=" + this.f6176e + ", placeholderRects=" + this.f6177f + ')';
    }

    public final float u(int i10) {
        return this.f6173b.s(i10);
    }

    public final MultiParagraph v() {
        return this.f6173b;
    }

    public final ResolvedTextDirection w(int i10) {
        return this.f6173b.t(i10);
    }

    public final List x() {
        return this.f6177f;
    }

    public final long y() {
        return this.f6174c;
    }

    private z(y yVar, MultiParagraph multiParagraph, long j10) {
        this.f6172a = yVar;
        this.f6173b = multiParagraph;
        this.f6174c = j10;
        this.f6175d = multiParagraph.g();
        this.f6176e = multiParagraph.j();
        this.f6177f = multiParagraph.v();
    }
}
