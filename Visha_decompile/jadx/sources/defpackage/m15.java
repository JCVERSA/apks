package defpackage;

import java.util.Arrays;

public final class m15 extends bf8 {
    public int[] a;
    public int b;

    public m15(int[] iArr) {
        y45.j(iArr, "bufferWithData");
        this.a = iArr;
        this.b = iArr.length;
        b(10);
    }

    @Override
    public void b(int i) {
        int[] iArr = this.a;
        if (iArr.length < i) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, wn8.d(i, iArr.length * 2));
            y45.i(iArrCopyOf, "copyOf(this, newSize)");
            this.a = iArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(int i) {
        bf8.c(this, 0, 1, null);
        int[] iArr = this.a;
        int iD = d();
        this.b = iD + 1;
        iArr[iD] = i;
    }

    @Override
    public int[] a() {
        int[] iArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(iArrCopyOf, "copyOf(this, newSize)");
        return iArrCopyOf;
    }
}
