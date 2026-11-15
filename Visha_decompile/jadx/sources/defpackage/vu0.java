package defpackage;

import java.util.Arrays;

public final class vu0 extends bf8 {
    public char[] a;
    public int b;

    public vu0(char[] cArr) {
        y45.j(cArr, "bufferWithData");
        this.a = cArr;
        this.b = cArr.length;
        b(10);
    }

    @Override
    public void b(int i) {
        char[] cArr = this.a;
        if (cArr.length < i) {
            char[] cArrCopyOf = Arrays.copyOf(cArr, wn8.d(i, cArr.length * 2));
            y45.i(cArrCopyOf, "copyOf(this, newSize)");
            this.a = cArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(char c) {
        bf8.c(this, 0, 1, null);
        char[] cArr = this.a;
        int iD = d();
        this.b = iD + 1;
        cArr[iD] = c;
    }

    @Override
    public char[] a() {
        char[] cArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(cArrCopyOf, "copyOf(this, newSize)");
        return cArrCopyOf;
    }
}
