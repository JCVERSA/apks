package androidx.media3.common.util;

import java.util.NoSuchElementException;

public final class w {

    private int f10155a;

    private int f10156b;

    private int f10157c;

    private long[] f10158d;

    private int f10159e;

    public w() {
        this(16);
    }

    private void c() {
        long[] jArr = this.f10158d;
        int length = jArr.length << 1;
        if (length < 0) {
            throw new IllegalStateException();
        }
        long[] jArr2 = new long[length];
        int length2 = jArr.length;
        int i10 = this.f10155a;
        int i11 = length2 - i10;
        System.arraycopy(jArr, i10, jArr2, 0, i11);
        System.arraycopy(this.f10158d, 0, jArr2, i11, i10);
        this.f10155a = 0;
        this.f10156b = this.f10157c - 1;
        this.f10158d = jArr2;
        this.f10159e = jArr2.length - 1;
    }

    public void a(long j10) {
        if (this.f10157c == this.f10158d.length) {
            c();
        }
        int i10 = (this.f10156b + 1) & this.f10159e;
        this.f10156b = i10;
        this.f10158d[i10] = j10;
        this.f10157c++;
    }

    public void b() {
        this.f10155a = 0;
        this.f10156b = -1;
        this.f10157c = 0;
    }

    public long d() {
        if (this.f10157c != 0) {
            return this.f10158d[this.f10155a];
        }
        throw new NoSuchElementException();
    }

    public boolean e() {
        return this.f10157c == 0;
    }

    public long f() {
        int i10 = this.f10157c;
        if (i10 == 0) {
            throw new NoSuchElementException();
        }
        long[] jArr = this.f10158d;
        int i11 = this.f10155a;
        long j10 = jArr[i11];
        this.f10155a = this.f10159e & (i11 + 1);
        this.f10157c = i10 - 1;
        return j10;
    }

    public w(int i10) {
        a.a(i10 >= 0 && i10 <= 1073741824);
        i10 = i10 == 0 ? 1 : i10;
        i10 = Integer.bitCount(i10) != 1 ? Integer.highestOneBit(i10 - 1) << 1 : i10;
        this.f10155a = 0;
        this.f10156b = -1;
        this.f10157c = 0;
        long[] jArr = new long[i10];
        this.f10158d = jArr;
        this.f10159e = jArr.length - 1;
    }
}
