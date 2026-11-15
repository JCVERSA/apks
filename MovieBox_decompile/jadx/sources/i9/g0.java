package i9;

public final class g0 {

    private final byte[] f61923a;

    private final int f61924b;

    private int f61925c;

    private int f61926d;

    public g0(byte[] bArr) {
        this.f61923a = bArr;
        this.f61924b = bArr.length;
    }

    private void a() {
        int i10;
        int i11 = this.f61925c;
        com.google.android.exoplayer2.util.a.g(i11 >= 0 && (i11 < (i10 = this.f61924b) || (i11 == i10 && this.f61926d == 0)));
    }

    public int b() {
        return (this.f61925c * 8) + this.f61926d;
    }

    public boolean c() {
        boolean z10 = (((this.f61923a[this.f61925c] & 255) >> this.f61926d) & 1) == 1;
        e(1);
        return z10;
    }

    public int d(int i10) {
        int i11 = this.f61925c;
        int iMin = Math.min(i10, 8 - this.f61926d);
        int i12 = i11 + 1;
        int i13 = ((this.f61923a[i11] & 255) >> this.f61926d) & (255 >> (8 - iMin));
        while (iMin < i10) {
            i13 |= (this.f61923a[i12] & 255) << iMin;
            iMin += 8;
            i12++;
        }
        int i14 = i13 & ((-1) >>> (32 - i10));
        e(i10);
        return i14;
    }

    public void e(int i10) {
        int i11 = i10 / 8;
        int i12 = this.f61925c + i11;
        this.f61925c = i12;
        int i13 = this.f61926d + (i10 - (i11 * 8));
        this.f61926d = i13;
        if (i13 > 7) {
            this.f61925c = i12 + 1;
            this.f61926d = i13 - 8;
        }
        a();
    }
}
