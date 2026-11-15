package defpackage;

import java.util.Arrays;

public final class wg9 extends bf8 {
    public short[] a;
    public int b;

    public wg9(short[] sArr) {
        y45.j(sArr, "bufferWithData");
        this.a = sArr;
        this.b = sArr.length;
        b(10);
    }

    @Override
    public void b(int i) {
        short[] sArr = this.a;
        if (sArr.length < i) {
            short[] sArrCopyOf = Arrays.copyOf(sArr, wn8.d(i, sArr.length * 2));
            y45.i(sArrCopyOf, "copyOf(this, newSize)");
            this.a = sArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(short s) {
        bf8.c(this, 0, 1, null);
        short[] sArr = this.a;
        int iD = d();
        this.b = iD + 1;
        sArr[iD] = s;
    }

    @Override
    public short[] a() {
        short[] sArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(sArrCopyOf, "copyOf(this, newSize)");
        return sArrCopyOf;
    }
}
