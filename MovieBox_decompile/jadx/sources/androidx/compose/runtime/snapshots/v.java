package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.h3;
import kotlin.collections.ArraysKt;

public final class v {

    private int f3717a;

    private int[] f3718b = new int[16];

    private h3[] f3719c = new h3[16];

    private final int b(Object obj, int i10) {
        int i11 = this.f3717a - 1;
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) >>> 1;
            int i14 = this.f3718b[i13];
            if (i14 < i10) {
                i12 = i13 + 1;
            } else {
                if (i14 <= i10) {
                    h3 h3Var = this.f3719c[i13];
                    return obj == (h3Var != null ? h3Var.get() : null) ? i13 : c(i13, obj, i10);
                }
                i11 = i13 - 1;
            }
        }
        return -(i12 + 1);
    }

    private final int c(int i10, Object obj, int i11) {
        int i12 = i10 - 1;
        while (true) {
            if (-1 >= i12 || this.f3718b[i12] != i11) {
                break;
            }
            h3 h3Var = this.f3719c[i12];
            if ((h3Var != null ? h3Var.get() : null) == obj) {
                return i12;
            }
            i12--;
        }
        int i13 = i10 + 1;
        int i14 = this.f3717a;
        while (i13 < i14) {
            if (this.f3718b[i13] != i11) {
                return -(i13 + 1);
            }
            h3 h3Var2 = this.f3719c[i13];
            if ((h3Var2 != null ? h3Var2.get() : null) == obj) {
                return i13;
            }
            i13++;
        }
        i13 = this.f3717a;
        return -(i13 + 1);
    }

    public final boolean a(Object obj) {
        int iB;
        int i10 = this.f3717a;
        int iC = androidx.compose.runtime.b.c(obj);
        if (i10 > 0) {
            iB = b(obj, iC);
            if (iB >= 0) {
                return false;
            }
        } else {
            iB = -1;
        }
        int i11 = -(iB + 1);
        h3[] h3VarArr = this.f3719c;
        int length = h3VarArr.length;
        if (i10 == length) {
            int i12 = length * 2;
            h3[] h3VarArr2 = new h3[i12];
            int[] iArr = new int[i12];
            int i13 = i11 + 1;
            ArraysKt.l(h3VarArr, h3VarArr2, i13, i11, i10);
            ArraysKt.p(this.f3719c, h3VarArr2, 0, 0, i11, 6, null);
            ArraysKt.j(this.f3718b, iArr, i13, i11, i10);
            ArraysKt.o(this.f3718b, iArr, 0, 0, i11, 6, null);
            this.f3719c = h3VarArr2;
            this.f3718b = iArr;
        } else {
            int i14 = i11 + 1;
            ArraysKt.l(h3VarArr, h3VarArr, i14, i11, i10);
            int[] iArr2 = this.f3718b;
            ArraysKt.j(iArr2, iArr2, i14, i11, i10);
        }
        this.f3719c[i11] = new h3(obj);
        this.f3718b[i11] = iC;
        this.f3717a++;
        return true;
    }

    public final int[] d() {
        return this.f3718b;
    }

    public final int e() {
        return this.f3717a;
    }

    public final h3[] f() {
        return this.f3719c;
    }

    public final void g(int i10) {
        this.f3717a = i10;
    }
}
