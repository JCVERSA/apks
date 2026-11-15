package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;

final class o implements h0 {

    private final int f2562a;

    private final int f2563b;

    private final int f2564c;

    private final int f2565d;

    public o(int i10, int i11, int i12, int i13) {
        this.f2562a = i10;
        this.f2563b = i11;
        this.f2564c = i12;
        this.f2565d = i13;
    }

    @Override
    public int a(o0.e eVar) {
        return this.f2563b;
    }

    @Override
    public int b(o0.e eVar) {
        return this.f2565d;
    }

    @Override
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return this.f2562a;
    }

    @Override
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return this.f2564c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f2562a == oVar.f2562a && this.f2563b == oVar.f2563b && this.f2564c == oVar.f2564c && this.f2565d == oVar.f2565d;
    }

    public int hashCode() {
        return (((((this.f2562a * 31) + this.f2563b) * 31) + this.f2564c) * 31) + this.f2565d;
    }

    public String toString() {
        return "Insets(left=" + this.f2562a + ", top=" + this.f2563b + ", right=" + this.f2564c + ", bottom=" + this.f2565d + ')';
    }
}
