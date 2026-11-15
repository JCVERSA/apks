package defpackage;

import java.util.Arrays;

public final class uh0 extends bf8 {
    public boolean[] a;
    public int b;

    public uh0(boolean[] zArr) {
        y45.j(zArr, "bufferWithData");
        this.a = zArr;
        this.b = zArr.length;
        b(10);
    }

    @Override
    public void b(int i) {
        boolean[] zArr = this.a;
        if (zArr.length < i) {
            boolean[] zArrCopyOf = Arrays.copyOf(zArr, wn8.d(i, zArr.length * 2));
            y45.i(zArrCopyOf, "copyOf(this, newSize)");
            this.a = zArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(boolean z) {
        bf8.c(this, 0, 1, null);
        boolean[] zArr = this.a;
        int iD = d();
        this.b = iD + 1;
        zArr[iD] = z;
    }

    @Override
    public boolean[] a() {
        boolean[] zArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(zArrCopyOf, "copyOf(this, newSize)");
        return zArrCopyOf;
    }
}
