package androidx.compose.runtime.snapshots;

import kotlin.collections.ArraysKt;

public final class l {

    private int f3703a;

    private int[] f3704b = new int[16];

    private int[] f3705c = new int[16];

    private int[] f3706d;

    private int f3707e;

    public l() {
        int[] iArr = new int[16];
        int i10 = 0;
        while (i10 < 16) {
            int i11 = i10 + 1;
            iArr[i10] = i11;
            i10 = i11;
        }
        this.f3706d = iArr;
    }

    private final int b() {
        int length = this.f3706d.length;
        if (this.f3707e >= length) {
            int i10 = length * 2;
            int[] iArr = new int[i10];
            int i11 = 0;
            while (i11 < i10) {
                int i12 = i11 + 1;
                iArr[i11] = i12;
                i11 = i12;
            }
            ArraysKt.o(this.f3706d, iArr, 0, 0, 0, 14, null);
            this.f3706d = iArr;
        }
        int i13 = this.f3707e;
        this.f3707e = this.f3706d[i13];
        return i13;
    }

    private final void c(int i10) {
        int[] iArr = this.f3704b;
        int length = iArr.length;
        if (i10 <= length) {
            return;
        }
        int i11 = length * 2;
        int[] iArr2 = new int[i11];
        int[] iArr3 = new int[i11];
        ArraysKt.o(iArr, iArr2, 0, 0, 0, 14, null);
        ArraysKt.o(this.f3705c, iArr3, 0, 0, 0, 14, null);
        this.f3704b = iArr2;
        this.f3705c = iArr3;
    }

    private final void d(int i10) {
        this.f3706d[i10] = this.f3707e;
        this.f3707e = i10;
    }

    private final void g(int i10) {
        int i11;
        int[] iArr = this.f3704b;
        int i12 = this.f3703a >> 1;
        while (i10 < i12) {
            int i13 = (i10 + 1) << 1;
            int i14 = i13 - 1;
            if (i13 >= this.f3703a || (i11 = iArr[i13]) >= iArr[i14]) {
                if (iArr[i14] >= iArr[i10]) {
                    return;
                }
                i(i14, i10);
                i10 = i14;
            } else {
                if (i11 >= iArr[i10]) {
                    return;
                }
                i(i13, i10);
                i10 = i13;
            }
        }
    }

    private final void h(int i10) {
        int[] iArr = this.f3704b;
        int i11 = iArr[i10];
        while (i10 > 0) {
            int i12 = ((i10 + 1) >> 1) - 1;
            if (iArr[i12] <= i11) {
                return;
            }
            i(i12, i10);
            i10 = i12;
        }
    }

    private final void i(int i10, int i11) {
        int[] iArr = this.f3704b;
        int[] iArr2 = this.f3705c;
        int[] iArr3 = this.f3706d;
        int i12 = iArr[i10];
        iArr[i10] = iArr[i11];
        iArr[i11] = i12;
        int i13 = iArr2[i10];
        iArr2[i10] = iArr2[i11];
        iArr2[i11] = i13;
        iArr3[iArr2[i10]] = i10;
        iArr3[iArr2[i11]] = i11;
    }

    public final int a(int i10) {
        c(this.f3703a + 1);
        int i11 = this.f3703a;
        this.f3703a = i11 + 1;
        int iB = b();
        this.f3704b[i11] = i10;
        this.f3705c[i11] = iB;
        this.f3706d[iB] = i11;
        h(i11);
        return iB;
    }

    public final int e(int i10) {
        return this.f3703a > 0 ? this.f3704b[0] : i10;
    }

    public final void f(int i10) {
        int i11 = this.f3706d[i10];
        i(i11, this.f3703a - 1);
        this.f3703a--;
        h(i11);
        g(i11);
        d(i10);
    }
}
