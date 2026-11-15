package com.google.android.exoplayer2.util;

public final class e0 {

    private byte[] f26796a;

    private int f26797b;

    private int f26798c;

    private int f26799d;

    public e0(byte[] bArr, int i10, int i11) {
        i(bArr, i10, i11);
    }

    private void a() {
        int i10;
        int i11 = this.f26798c;
        a.g(i11 >= 0 && (i11 < (i10 = this.f26797b) || (i11 == i10 && this.f26799d == 0)));
    }

    private int f() {
        int i10 = 0;
        while (!d()) {
            i10++;
        }
        return ((1 << i10) - 1) + (i10 > 0 ? e(i10) : 0);
    }

    private boolean j(int i10) {
        if (2 <= i10 && i10 < this.f26797b) {
            byte[] bArr = this.f26796a;
            if (bArr[i10] == 3 && bArr[i10 - 2] == 0 && bArr[i10 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean b(int i10) {
        int i11 = this.f26798c;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        int i14 = (this.f26799d + i10) - (i12 * 8);
        if (i14 > 7) {
            i13++;
            i14 -= 8;
        }
        while (true) {
            i11++;
            if (i11 > i13 || i13 >= this.f26797b) {
                break;
            }
            if (j(i11)) {
                i13++;
                i11 += 2;
            }
        }
        int i15 = this.f26797b;
        if (i13 >= i15) {
            return i13 == i15 && i14 == 0;
        }
        return true;
    }

    public boolean c() {
        int i10 = this.f26798c;
        int i11 = this.f26799d;
        int i12 = 0;
        while (this.f26798c < this.f26797b && !d()) {
            i12++;
        }
        boolean z10 = this.f26798c == this.f26797b;
        this.f26798c = i10;
        this.f26799d = i11;
        return !z10 && b((i12 * 2) + 1);
    }

    public boolean d() {
        boolean z10 = (this.f26796a[this.f26798c] & (128 >> this.f26799d)) != 0;
        k();
        return z10;
    }

    public int e(int i10) {
        int i11;
        this.f26799d += i10;
        int i12 = 0;
        while (true) {
            i11 = this.f26799d;
            int i13 = 2;
            if (i11 <= 8) {
                break;
            }
            int i14 = i11 - 8;
            this.f26799d = i14;
            byte[] bArr = this.f26796a;
            int i15 = this.f26798c;
            i12 |= (bArr[i15] & 255) << i14;
            if (!j(i15 + 1)) {
                i13 = 1;
            }
            this.f26798c = i15 + i13;
        }
        byte[] bArr2 = this.f26796a;
        int i16 = this.f26798c;
        int i17 = ((-1) >>> (32 - i10)) & (i12 | ((bArr2[i16] & 255) >> (8 - i11)));
        if (i11 == 8) {
            this.f26799d = 0;
            this.f26798c = i16 + (j(i16 + 1) ? 2 : 1);
        }
        a();
        return i17;
    }

    public int g() {
        int iF = f();
        return (iF % 2 == 0 ? -1 : 1) * ((iF + 1) / 2);
    }

    public int h() {
        return f();
    }

    public void i(byte[] bArr, int i10, int i11) {
        this.f26796a = bArr;
        this.f26798c = i10;
        this.f26797b = i11;
        this.f26799d = 0;
        a();
    }

    public void k() {
        int i10 = this.f26799d + 1;
        this.f26799d = i10;
        if (i10 == 8) {
            this.f26799d = 0;
            int i11 = this.f26798c;
            this.f26798c = i11 + (j(i11 + 1) ? 2 : 1);
        }
        a();
    }

    public void l(int i10) {
        int i11 = this.f26798c;
        int i12 = i10 / 8;
        int i13 = i11 + i12;
        this.f26798c = i13;
        int i14 = this.f26799d + (i10 - (i12 * 8));
        this.f26799d = i14;
        if (i14 > 7) {
            this.f26798c = i13 + 1;
            this.f26799d = i14 - 8;
        }
        while (true) {
            i11++;
            if (i11 > this.f26798c) {
                a();
                return;
            } else if (j(i11)) {
                this.f26798c++;
                i11 += 2;
            }
        }
    }
}
