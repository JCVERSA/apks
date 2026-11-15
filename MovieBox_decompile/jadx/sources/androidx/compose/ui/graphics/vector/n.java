package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.q4;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class n extends l {

    private final String f4551a;

    private final List f4552b;

    private final int f4553c;

    private final j1 f4554d;

    private final float f4555e;

    private final j1 f4556f;

    private final float f4557g;

    private final float f4558h;

    private final int f4559i;

    private final int f4560j;

    private final float f4561k;

    private final float f4562l;

    private final float f4563m;

    private final float f4564n;

    public n(String str, List list, int i10, j1 j1Var, float f10, j1 j1Var2, float f11, float f12, int i11, int i12, float f13, float f14, float f15, float f16, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, i10, j1Var, f10, j1Var2, f11, f12, i11, i12, f13, f14, f15, f16);
    }

    public final j1 a() {
        return this.f4554d;
    }

    public final float c() {
        return this.f4555e;
    }

    public final String e() {
        return this.f4551a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && n.class == obj.getClass()) {
            n nVar = (n) obj;
            return Intrinsics.c(this.f4551a, nVar.f4551a) && Intrinsics.c(this.f4554d, nVar.f4554d) && this.f4555e == nVar.f4555e && Intrinsics.c(this.f4556f, nVar.f4556f) && this.f4557g == nVar.f4557g && this.f4558h == nVar.f4558h && c5.e(this.f4559i, nVar.f4559i) && d5.e(this.f4560j, nVar.f4560j) && this.f4561k == nVar.f4561k && this.f4562l == nVar.f4562l && this.f4563m == nVar.f4563m && this.f4564n == nVar.f4564n && q4.d(this.f4553c, nVar.f4553c) && Intrinsics.c(this.f4552b, nVar.f4552b);
        }
        return false;
    }

    public final List f() {
        return this.f4552b;
    }

    public int hashCode() {
        int iHashCode = ((this.f4551a.hashCode() * 31) + this.f4552b.hashCode()) * 31;
        j1 j1Var = this.f4554d;
        int iHashCode2 = (((iHashCode + (j1Var != null ? j1Var.hashCode() : 0)) * 31) + Float.floatToIntBits(this.f4555e)) * 31;
        j1 j1Var2 = this.f4556f;
        return ((((((((((((((((((iHashCode2 + (j1Var2 != null ? j1Var2.hashCode() : 0)) * 31) + Float.floatToIntBits(this.f4557g)) * 31) + Float.floatToIntBits(this.f4558h)) * 31) + c5.f(this.f4559i)) * 31) + d5.f(this.f4560j)) * 31) + Float.floatToIntBits(this.f4561k)) * 31) + Float.floatToIntBits(this.f4562l)) * 31) + Float.floatToIntBits(this.f4563m)) * 31) + Float.floatToIntBits(this.f4564n)) * 31) + q4.e(this.f4553c);
    }

    public final int i() {
        return this.f4553c;
    }

    public final j1 j() {
        return this.f4556f;
    }

    public final float l() {
        return this.f4557g;
    }

    public final int m() {
        return this.f4559i;
    }

    public final int n() {
        return this.f4560j;
    }

    public final float o() {
        return this.f4561k;
    }

    public final float p() {
        return this.f4558h;
    }

    public final float q() {
        return this.f4563m;
    }

    public final float r() {
        return this.f4564n;
    }

    public final float s() {
        return this.f4562l;
    }

    private n(String str, List list, int i10, j1 j1Var, float f10, j1 j1Var2, float f11, float f12, int i11, int i12, float f13, float f14, float f15, float f16) {
        super(null);
        this.f4551a = str;
        this.f4552b = list;
        this.f4553c = i10;
        this.f4554d = j1Var;
        this.f4555e = f10;
        this.f4556f = j1Var2;
        this.f4557g = f11;
        this.f4558h = f12;
        this.f4559i = i11;
        this.f4560j = i12;
        this.f4561k = f13;
        this.f4562l = f14;
        this.f4563m = f15;
        this.f4564n = f16;
    }
}
