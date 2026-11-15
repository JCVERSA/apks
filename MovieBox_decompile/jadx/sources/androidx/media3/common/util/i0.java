package androidx.media3.common.util;

import androidx.core.view.MotionEventCompat;
import java.nio.charset.Charset;

public final class i0 {

    public byte[] f10076a;

    private int f10077b;

    private int f10078c;

    private int f10079d;

    public i0() {
        this.f10076a = a1.f10043f;
    }

    private void a() {
        int i10;
        int i11 = this.f10077b;
        a.g(i11 >= 0 && (i11 < (i10 = this.f10079d) || (i11 == i10 && this.f10078c == 0)));
    }

    public int b() {
        return ((this.f10079d - this.f10077b) * 8) - this.f10078c;
    }

    public void c() {
        if (this.f10078c == 0) {
            return;
        }
        this.f10078c = 0;
        this.f10077b++;
        a();
    }

    public int d() {
        a.g(this.f10078c == 0);
        return this.f10077b;
    }

    public int e() {
        return (this.f10077b * 8) + this.f10078c;
    }

    public void f(int i10, int i11) {
        if (i11 < 32) {
            i10 &= (1 << i11) - 1;
        }
        int iMin = Math.min(8 - this.f10078c, i11);
        int i12 = this.f10078c;
        int i13 = (8 - i12) - iMin;
        int i14 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i12) | ((1 << i13) - 1);
        byte[] bArr = this.f10076a;
        int i15 = this.f10077b;
        byte b10 = (byte) (i14 & bArr[i15]);
        bArr[i15] = b10;
        int i16 = i11 - iMin;
        bArr[i15] = (byte) (b10 | ((i10 >>> i16) << i13));
        int i17 = i15 + 1;
        while (i16 > 8) {
            this.f10076a[i17] = (byte) (i10 >>> (i16 - 8));
            i16 -= 8;
            i17++;
        }
        int i18 = 8 - i16;
        byte[] bArr2 = this.f10076a;
        byte b11 = (byte) (bArr2[i17] & ((1 << i18) - 1));
        bArr2[i17] = b11;
        bArr2[i17] = (byte) (((i10 & ((1 << i16) - 1)) << i18) | b11);
        r(i11);
        a();
    }

    public boolean g() {
        boolean z10 = (this.f10076a[this.f10077b] & (128 >> this.f10078c)) != 0;
        q();
        return z10;
    }

    public int h(int i10) {
        int i11;
        if (i10 == 0) {
            return 0;
        }
        this.f10078c += i10;
        int i12 = 0;
        while (true) {
            i11 = this.f10078c;
            if (i11 <= 8) {
                break;
            }
            int i13 = i11 - 8;
            this.f10078c = i13;
            byte[] bArr = this.f10076a;
            int i14 = this.f10077b;
            this.f10077b = i14 + 1;
            i12 |= (bArr[i14] & 255) << i13;
        }
        byte[] bArr2 = this.f10076a;
        int i15 = this.f10077b;
        int i16 = ((-1) >>> (32 - i10)) & (i12 | ((bArr2[i15] & 255) >> (8 - i11)));
        if (i11 == 8) {
            this.f10078c = 0;
            this.f10077b = i15 + 1;
        }
        a();
        return i16;
    }

    public void i(byte[] bArr, int i10, int i11) {
        int i12 = (i11 >> 3) + i10;
        while (i10 < i12) {
            byte[] bArr2 = this.f10076a;
            int i13 = this.f10077b;
            int i14 = i13 + 1;
            this.f10077b = i14;
            byte b10 = bArr2[i13];
            int i15 = this.f10078c;
            byte b11 = (byte) (b10 << i15);
            bArr[i10] = b11;
            bArr[i10] = (byte) (((255 & bArr2[i14]) >> (8 - i15)) | b11);
            i10++;
        }
        int i16 = i11 & 7;
        if (i16 == 0) {
            return;
        }
        byte b12 = (byte) (bArr[i12] & (255 >> i16));
        bArr[i12] = b12;
        int i17 = this.f10078c;
        if (i17 + i16 > 8) {
            byte[] bArr3 = this.f10076a;
            int i18 = this.f10077b;
            this.f10077b = i18 + 1;
            bArr[i12] = (byte) (b12 | ((bArr3[i18] & 255) << i17));
            this.f10078c = i17 - 8;
        }
        int i19 = this.f10078c + i16;
        this.f10078c = i19;
        byte[] bArr4 = this.f10076a;
        int i20 = this.f10077b;
        bArr[i12] = (byte) (((byte) (((255 & bArr4[i20]) >> (8 - i19)) << (8 - i16))) | bArr[i12]);
        if (i19 == 8) {
            this.f10078c = 0;
            this.f10077b = i20 + 1;
        }
        a();
    }

    public long j(int i10) {
        return i10 <= 32 ? a1.w1(h(i10)) : a1.v1(h(i10 - 32), h(32));
    }

    public void k(byte[] bArr, int i10, int i11) {
        a.g(this.f10078c == 0);
        System.arraycopy(this.f10076a, this.f10077b, bArr, i10, i11);
        this.f10077b += i11;
        a();
    }

    public String l(int i10, Charset charset) {
        byte[] bArr = new byte[i10];
        k(bArr, 0, i10);
        return new String(bArr, charset);
    }

    public void m(j0 j0Var) {
        o(j0Var.e(), j0Var.g());
        p(j0Var.f() * 8);
    }

    public void n(byte[] bArr) {
        o(bArr, bArr.length);
    }

    public void o(byte[] bArr, int i10) {
        this.f10076a = bArr;
        this.f10077b = 0;
        this.f10078c = 0;
        this.f10079d = i10;
    }

    public void p(int i10) {
        int i11 = i10 / 8;
        this.f10077b = i11;
        this.f10078c = i10 - (i11 * 8);
        a();
    }

    public void q() {
        int i10 = this.f10078c + 1;
        this.f10078c = i10;
        if (i10 == 8) {
            this.f10078c = 0;
            this.f10077b++;
        }
        a();
    }

    public void r(int i10) {
        int i11 = i10 / 8;
        int i12 = this.f10077b + i11;
        this.f10077b = i12;
        int i13 = this.f10078c + (i10 - (i11 * 8));
        this.f10078c = i13;
        if (i13 > 7) {
            this.f10077b = i12 + 1;
            this.f10078c = i13 - 8;
        }
        a();
    }

    public void s(int i10) {
        a.g(this.f10078c == 0);
        this.f10077b += i10;
        a();
    }

    public i0(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public i0(byte[] bArr, int i10) {
        this.f10076a = bArr;
        this.f10079d = i10;
    }
}
