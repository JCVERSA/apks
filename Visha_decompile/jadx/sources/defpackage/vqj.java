package defpackage;

import java.util.Arrays;
import java.util.Objects;

public final class vqj {
    public final int[] a;
    public final npj[] b;
    public final int[] c;
    public final int[][][] d;
    public final npj e;

    public vqj(String[] strArr, int[] iArr, npj[] npjVarArr, int[] iArr2, int[][][] iArr3, npj npjVar) {
        this.a = iArr;
        this.b = npjVarArr;
        this.d = iArr3;
        this.c = iArr2;
        this.e = npjVar;
    }

    public final int a(int i, int i2, boolean z) {
        npj[] npjVarArr = this.b;
        int i3 = npjVarArr[i].b(i2).a;
        int[] iArr = new int[i3];
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < i3; i6++) {
            if ((this.d[i][i2][i6] & 7) == 4) {
                iArr[i5] = i6;
                i5++;
            }
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, i5);
        String str = null;
        int i7 = 0;
        int iMin = 16;
        boolean z2 = false;
        while (i4 < iArrCopyOf.length) {
            String str2 = npjVarArr[i].b(i2).b(iArrCopyOf[i4]).o;
            int i8 = i7 + 1;
            if (i7 == 0) {
                str = str2;
            } else {
                z2 |= !Objects.equals(str, str2);
            }
            iMin = Math.min(iMin, this.d[i][i2][i4] & 24);
            i4++;
            i7 = i8;
        }
        return z2 ? Math.min(iMin, this.c[i]) : iMin;
    }

    public final int b(int i, int i2, int i3) {
        return this.d[i][i2][i3];
    }

    public final int c(int i) {
        return this.a[i];
    }

    public final npj d(int i) {
        return this.b[i];
    }

    public final npj e() {
        return this.e;
    }
}
