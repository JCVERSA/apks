package androidx.media3.common.util;

import java.util.Arrays;

public final class v {

    private int f10153a;

    private long[] f10154b;

    public v() {
        this(32);
    }

    public void a(long j10) {
        int i10 = this.f10153a;
        long[] jArr = this.f10154b;
        if (i10 == jArr.length) {
            this.f10154b = Arrays.copyOf(jArr, i10 * 2);
        }
        long[] jArr2 = this.f10154b;
        int i11 = this.f10153a;
        this.f10153a = i11 + 1;
        jArr2[i11] = j10;
    }

    public void b(long[] jArr) {
        int length = this.f10153a + jArr.length;
        long[] jArr2 = this.f10154b;
        if (length > jArr2.length) {
            this.f10154b = Arrays.copyOf(jArr2, Math.max(jArr2.length * 2, length));
        }
        System.arraycopy(jArr, 0, this.f10154b, this.f10153a, jArr.length);
        this.f10153a = length;
    }

    public long c(int i10) {
        if (i10 >= 0 && i10 < this.f10153a) {
            return this.f10154b[i10];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i10 + ", size is " + this.f10153a);
    }

    public int d() {
        return this.f10153a;
    }

    public v(int i10) {
        this.f10154b = new long[i10];
    }
}
