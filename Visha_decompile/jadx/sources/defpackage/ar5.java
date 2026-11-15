package defpackage;

import java.util.Arrays;

public final class ar5 extends bf8 {
    public long[] a;
    public int b;

    public ar5(long[] jArr) {
        y45.j(jArr, "bufferWithData");
        this.a = jArr;
        this.b = jArr.length;
        b(10);
    }

    @Override
    public void b(int i) {
        long[] jArr = this.a;
        if (jArr.length < i) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, wn8.d(i, jArr.length * 2));
            y45.i(jArrCopyOf, "copyOf(this, newSize)");
            this.a = jArrCopyOf;
        }
    }

    @Override
    public int d() {
        return this.b;
    }

    public final void e(long j) {
        bf8.c(this, 0, 1, null);
        long[] jArr = this.a;
        int iD = d();
        this.b = iD + 1;
        jArr[iD] = j;
    }

    @Override
    public long[] a() {
        long[] jArrCopyOf = Arrays.copyOf(this.a, d());
        y45.i(jArrCopyOf, "copyOf(this, newSize)");
        return jArrCopyOf;
    }
}
