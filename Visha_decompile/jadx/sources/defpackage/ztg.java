package defpackage;

import java.util.NoSuchElementException;

public final class ztg {
    public int a;
    public int b;
    public long[] c;
    public int d;

    public ztg(int i) {
        int i2 = 16;
        if (Integer.bitCount(16) != 1) {
            int iHighestOneBit = Integer.highestOneBit(15);
            i2 = iHighestOneBit + iHighestOneBit;
        }
        this.a = 0;
        this.b = 0;
        long[] jArr = new long[i2];
        this.c = jArr;
        this.d = jArr.length - 1;
    }

    public final long a() {
        if (this.b != 0) {
            return this.c[this.a];
        }
        throw new NoSuchElementException();
    }

    public final long b() {
        int i = this.b;
        if (i == 0) {
            throw new NoSuchElementException();
        }
        long[] jArr = this.c;
        int i2 = this.a;
        long j = jArr[i2];
        this.a = this.d & (i2 + 1);
        this.b = i - 1;
        return j;
    }

    public final void c() {
        this.a = 0;
        this.b = 0;
    }

    public final boolean d() {
        return this.b == 0;
    }
}
