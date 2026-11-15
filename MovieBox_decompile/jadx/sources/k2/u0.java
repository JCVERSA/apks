package k2;

public final class u0 {

    private final byte[] f63698a;

    private final int f63699b;

    private int f63700c;

    private int f63701d;

    public u0(byte[] bArr) {
        this.f63698a = bArr;
        this.f63699b = bArr.length;
    }

    private void a() {
        int i10;
        int i11 = this.f63700c;
        androidx.media3.common.util.a.g(i11 >= 0 && (i11 < (i10 = this.f63699b) || (i11 == i10 && this.f63701d == 0)));
    }

    public int b() {
        return (this.f63700c * 8) + this.f63701d;
    }

    public boolean c() {
        boolean z10 = (((this.f63698a[this.f63700c] & 255) >> this.f63701d) & 1) == 1;
        e(1);
        return z10;
    }

    public int d(int i10) {
        int i11 = this.f63700c;
        int iMin = Math.min(i10, 8 - this.f63701d);
        int i12 = i11 + 1;
        int i13 = ((this.f63698a[i11] & 255) >> this.f63701d) & (255 >> (8 - iMin));
        while (iMin < i10) {
            i13 |= (this.f63698a[i12] & 255) << iMin;
            iMin += 8;
            i12++;
        }
        int i14 = i13 & ((-1) >>> (32 - i10));
        e(i10);
        return i14;
    }

    public void e(int i10) {
        int i11 = i10 / 8;
        int i12 = this.f63700c + i11;
        this.f63700c = i12;
        int i13 = this.f63701d + (i10 - (i11 * 8));
        this.f63701d = i13;
        if (i13 > 7) {
            this.f63700c = i12 + 1;
            this.f63701d = i13 - 8;
        }
        a();
    }
}
