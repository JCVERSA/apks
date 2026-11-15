package defpackage;

import org.bouncycastle.crypto.CryptoServicePurpose;

public class ux8 extends jd4 implements zj3, en6 {
    public static final int[] o = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int[] m;
    public int n;

    public ux8() {
        this(CryptoServicePurpose.ANY);
    }

    public static int n(int i, int i2, int i3) {
        return ((~i) & i3) ^ (i2 & i);
    }

    public static int o(int i, int i2, int i3) {
        return ((i ^ i2) & i3) | (i & i2);
    }

    public static int p(int i) {
        return ((i << 10) | (i >>> 22)) ^ (((i >>> 2) | (i << 30)) ^ ((i >>> 13) | (i << 19)));
    }

    public static int q(int i) {
        return ((i << 7) | (i >>> 25)) ^ (((i >>> 6) | (i << 26)) ^ ((i >>> 11) | (i << 21)));
    }

    public static int r(int i) {
        return (i >>> 3) ^ (((i >>> 7) | (i << 25)) ^ ((i >>> 18) | (i << 14)));
    }

    public static int s(int i) {
        return (i >>> 10) ^ (((i >>> 17) | (i << 15)) ^ ((i >>> 19) | (i << 13)));
    }

    @Override
    public int a(byte[] bArr, int i) {
        j();
        cv7.c(this.e, bArr, i);
        cv7.c(this.f, bArr, i + 4);
        cv7.c(this.g, bArr, i + 8);
        cv7.c(this.h, bArr, i + 12);
        cv7.c(this.i, bArr, i + 16);
        cv7.c(this.j, bArr, i + 20);
        cv7.c(this.k, bArr, i + 24);
        cv7.c(this.l, bArr, i + 28);
        reset();
        return 32;
    }

    @Override
    public String c() {
        return "SHA-256";
    }

    @Override
    public en6 d() {
        return new ux8(this);
    }

    @Override
    public void e(en6 en6Var) {
        t((ux8) en6Var);
    }

    @Override
    public int g() {
        return 32;
    }

    @Override
    public void k() {
        for (int i = 16; i <= 63; i++) {
            int[] iArr = this.m;
            int iS = s(iArr[i - 2]);
            int[] iArr2 = this.m;
            iArr[i] = iS + iArr2[i - 7] + r(iArr2[i - 15]) + this.m[i - 16];
        }
        int iP = this.e;
        int iP2 = this.f;
        int iP3 = this.g;
        int iP4 = this.h;
        int i2 = this.i;
        int i3 = this.j;
        int i4 = this.k;
        int i5 = this.l;
        int i6 = 0;
        for (int i7 = 0; i7 < 8; i7++) {
            int iQ = q(i2) + n(i2, i3, i4);
            int[] iArr3 = o;
            int i8 = i5 + iQ + iArr3[i6] + this.m[i6];
            int i9 = iP4 + i8;
            int iP5 = i8 + p(iP) + o(iP, iP2, iP3);
            int i10 = i6 + 1;
            int iQ2 = i4 + q(i9) + n(i9, i2, i3) + iArr3[i10] + this.m[i10];
            int i11 = iP3 + iQ2;
            int iP6 = iQ2 + p(iP5) + o(iP5, iP, iP2);
            int i12 = i6 + 2;
            int iQ3 = i3 + q(i11) + n(i11, i9, i2) + iArr3[i12] + this.m[i12];
            int i13 = iP2 + iQ3;
            int iP7 = iQ3 + p(iP6) + o(iP6, iP5, iP);
            int i14 = i6 + 3;
            int iQ4 = i2 + q(i13) + n(i13, i11, i9) + iArr3[i14] + this.m[i14];
            int i15 = iP + iQ4;
            int iP8 = iQ4 + p(iP7) + o(iP7, iP6, iP5);
            int i16 = i6 + 4;
            int iQ5 = i9 + q(i15) + n(i15, i13, i11) + iArr3[i16] + this.m[i16];
            i5 = iP5 + iQ5;
            iP4 = iQ5 + p(iP8) + o(iP8, iP7, iP6);
            int i17 = i6 + 5;
            int iQ6 = i11 + q(i5) + n(i5, i15, i13) + iArr3[i17] + this.m[i17];
            i4 = iP6 + iQ6;
            iP3 = iQ6 + p(iP4) + o(iP4, iP8, iP7);
            int i18 = i6 + 6;
            int iQ7 = i13 + q(i4) + n(i4, i5, i15) + iArr3[i18] + this.m[i18];
            i3 = iP7 + iQ7;
            iP2 = iQ7 + p(iP3) + o(iP3, iP4, iP8);
            int i19 = i6 + 7;
            int iQ8 = i15 + q(i3) + n(i3, i4, i5) + iArr3[i19] + this.m[i19];
            i2 = iP8 + iQ8;
            iP = iQ8 + p(iP2) + o(iP2, iP3, iP4);
            i6 += 8;
        }
        this.e += iP;
        this.f += iP2;
        this.g += iP3;
        this.h += iP4;
        this.i += i2;
        this.j += i3;
        this.k += i4;
        this.l += i5;
        this.n = 0;
        for (int i20 = 0; i20 < 16; i20++) {
            this.m[i20] = 0;
        }
    }

    @Override
    public void l(long j) {
        if (this.n > 14) {
            k();
        }
        int[] iArr = this.m;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) j;
    }

    @Override
    public void m(byte[] bArr, int i) {
        this.m[this.n] = cv7.a(bArr, i);
        int i2 = this.n + 1;
        this.n = i2;
        if (i2 == 16) {
            k();
        }
    }

    @Override
    public void reset() {
        super.reset();
        this.e = 1779033703;
        this.f = -1150833019;
        this.g = 1013904242;
        this.h = -1521486534;
        this.i = 1359893119;
        this.j = -1694144372;
        this.k = 528734635;
        this.l = 1541459225;
        this.n = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.m;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    public final void t(ux8 ux8Var) {
        super.i(ux8Var);
        this.e = ux8Var.e;
        this.f = ux8Var.f;
        this.g = ux8Var.g;
        this.h = ux8Var.h;
        this.i = ux8Var.i;
        this.j = ux8Var.j;
        this.k = ux8Var.k;
        this.l = ux8Var.l;
        int[] iArr = ux8Var.m;
        System.arraycopy(iArr, 0, this.m, 0, iArr.length);
        this.n = ux8Var.n;
    }

    public xl1 u() {
        return ylb.a(this, 256, this.a);
    }

    public ux8(ux8 ux8Var) {
        super(ux8Var);
        this.m = new int[64];
        t(ux8Var);
    }

    public ux8(CryptoServicePurpose cryptoServicePurpose) {
        super(cryptoServicePurpose);
        this.m = new int[64];
        zl1.a(u());
        reset();
    }
}
