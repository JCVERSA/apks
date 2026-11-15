package kd;

public final class c {

    private final byte[] f63929a;

    private int f63930b;

    private int f63931c;

    public c(byte[] bArr) {
        this.f63929a = bArr;
    }

    public int a() {
        return ((this.f63929a.length - this.f63930b) * 8) - this.f63931c;
    }

    public int b() {
        return this.f63931c;
    }

    public int c() {
        return this.f63930b;
    }

    public int d(int i10) {
        if (i10 < 1 || i10 > 32 || i10 > a()) {
            throw new IllegalArgumentException(String.valueOf(i10));
        }
        int i11 = this.f63931c;
        int i12 = 0;
        if (i11 > 0) {
            int i13 = 8 - i11;
            int iMin = Math.min(i10, i13);
            int i14 = i13 - iMin;
            byte[] bArr = this.f63929a;
            int i15 = this.f63930b;
            int i16 = (((255 >> (8 - iMin)) << i14) & bArr[i15]) >> i14;
            i10 -= iMin;
            int i17 = this.f63931c + iMin;
            this.f63931c = i17;
            if (i17 == 8) {
                this.f63931c = 0;
                this.f63930b = i15 + 1;
            }
            i12 = i16;
        }
        if (i10 <= 0) {
            return i12;
        }
        while (i10 >= 8) {
            int i18 = i12 << 8;
            byte[] bArr2 = this.f63929a;
            int i19 = this.f63930b;
            i12 = (bArr2[i19] & 255) | i18;
            this.f63930b = i19 + 1;
            i10 -= 8;
        }
        if (i10 <= 0) {
            return i12;
        }
        int i20 = 8 - i10;
        int i21 = (i12 << i10) | ((((255 >> i20) << i20) & this.f63929a[this.f63930b]) >> i20);
        this.f63931c += i10;
        return i21;
    }
}
