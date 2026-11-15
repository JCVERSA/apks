package defpackage;

import java.util.Arrays;

public final class ww2 extends bf8 {
    public double[] a;
    public int b;

    public ww2(double[] dArr) {
        y45.j(dArr, "bufferWithData");
        this.a = dArr;
        this.b = dArr.length;
        b(10);
    }

    @Override
    public void b(int i) {
        double[] dArr = this.a;
        if (dArr.length < i) {
            double[] dArrCopyOf = Arrays.copyOf(dArr, wn8.d(i, dArr.length * 2));
            y45.i(dArrCopyOf, "copyOf(this, newSize)");
            this.a = dArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(double d) {
        bf8.c(this, 0, 1, null);
        double[] dArr = this.a;
        int iD = d();
        this.b = iD + 1;
        dArr[iD] = d;
    }

    @Override
    public double[] a() {
        double[] dArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(dArrCopyOf, "copyOf(this, newSize)");
        return dArrCopyOf;
    }
}
