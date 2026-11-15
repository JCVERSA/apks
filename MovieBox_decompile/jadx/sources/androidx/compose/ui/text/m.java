package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class m {

    private final l f5981a;

    private final int f5982b;

    private final int f5983c;

    private int f5984d;

    private int f5985e;

    private float f5986f;

    private float f5987g;

    public m(l lVar, int i10, int i11, int i12, int i13, float f10, float f11) {
        this.f5981a = lVar;
        this.f5982b = i10;
        this.f5983c = i11;
        this.f5984d = i12;
        this.f5985e = i13;
        this.f5986f = f10;
        this.f5987g = f11;
    }

    public final float a() {
        return this.f5987g;
    }

    public final int b() {
        return this.f5983c;
    }

    public final int c() {
        return this.f5985e;
    }

    public final int d() {
        return this.f5983c - this.f5982b;
    }

    public final l e() {
        return this.f5981a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return Intrinsics.c(this.f5981a, mVar.f5981a) && this.f5982b == mVar.f5982b && this.f5983c == mVar.f5983c && this.f5984d == mVar.f5984d && this.f5985e == mVar.f5985e && Float.compare(this.f5986f, mVar.f5986f) == 0 && Float.compare(this.f5987g, mVar.f5987g) == 0;
    }

    public final int f() {
        return this.f5982b;
    }

    public final int g() {
        return this.f5984d;
    }

    public final float h() {
        return this.f5986f;
    }

    public int hashCode() {
        return (((((((((((this.f5981a.hashCode() * 31) + this.f5982b) * 31) + this.f5983c) * 31) + this.f5984d) * 31) + this.f5985e) * 31) + Float.floatToIntBits(this.f5986f)) * 31) + Float.floatToIntBits(this.f5987g);
    }

    public final y.i i(y.i iVar) {
        return iVar.q(y.h.a(0.0f, this.f5986f));
    }

    public final int j(int i10) {
        return i10 + this.f5982b;
    }

    public final int k(int i10) {
        return i10 + this.f5984d;
    }

    public final float l(float f10) {
        return f10 + this.f5986f;
    }

    public final int m(int i10) {
        return RangesKt.l(i10, this.f5982b, this.f5983c) - this.f5982b;
    }

    public final int n(int i10) {
        return i10 - this.f5984d;
    }

    public final float o(float f10) {
        return f10 - this.f5986f;
    }

    public String toString() {
        return "ParagraphInfo(paragraph=" + this.f5981a + ", startIndex=" + this.f5982b + ", endIndex=" + this.f5983c + ", startLineIndex=" + this.f5984d + ", endLineIndex=" + this.f5985e + ", top=" + this.f5986f + ", bottom=" + this.f5987g + ')';
    }
}
