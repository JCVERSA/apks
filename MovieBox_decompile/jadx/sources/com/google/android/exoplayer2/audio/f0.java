package com.google.android.exoplayer2.audio;

import java.nio.ShortBuffer;
import java.util.Arrays;

final class f0 {

    private final int f23974a;

    private final int f23975b;

    private final float f23976c;

    private final float f23977d;

    private final float f23978e;

    private final int f23979f;

    private final int f23980g;

    private final int f23981h;

    private final short[] f23982i;

    private short[] f23983j;

    private int f23984k;

    private short[] f23985l;

    private int f23986m;

    private short[] f23987n;

    private int f23988o;

    private int f23989p;

    private int f23990q;

    private int f23991r;

    private int f23992s;

    private int f23993t;

    private int f23994u;

    private int f23995v;

    public f0(int i10, int i11, float f10, float f11, int i12) {
        this.f23974a = i10;
        this.f23975b = i11;
        this.f23976c = f10;
        this.f23977d = f11;
        this.f23978e = i10 / i12;
        this.f23979f = i10 / 400;
        int i13 = i10 / 65;
        this.f23980g = i13;
        int i14 = i13 * 2;
        this.f23981h = i14;
        this.f23982i = new short[i14];
        this.f23983j = new short[i14 * i11];
        this.f23985l = new short[i14 * i11];
        this.f23987n = new short[i14 * i11];
    }

    private void a(float f10, int i10) {
        int i11;
        int i12;
        if (this.f23986m == i10) {
            return;
        }
        int i13 = this.f23974a;
        int i14 = (int) (i13 / f10);
        while (true) {
            if (i14 <= 16384 && i13 <= 16384) {
                break;
            }
            i14 /= 2;
            i13 /= 2;
        }
        o(i10);
        int i15 = 0;
        while (true) {
            int i16 = this.f23988o;
            if (i15 >= i16 - 1) {
                u(i16 - 1);
                return;
            }
            while (true) {
                i11 = this.f23989p;
                int i17 = (i11 + 1) * i14;
                i12 = this.f23990q;
                if (i17 <= i12 * i13) {
                    break;
                }
                this.f23985l = f(this.f23985l, this.f23986m, 1);
                int i18 = 0;
                while (true) {
                    int i19 = this.f23975b;
                    if (i18 < i19) {
                        this.f23985l[(this.f23986m * i19) + i18] = n(this.f23987n, (i19 * i15) + i18, i13, i14);
                        i18++;
                    }
                }
                this.f23990q++;
                this.f23986m++;
            }
            int i20 = i11 + 1;
            this.f23989p = i20;
            if (i20 == i13) {
                this.f23989p = 0;
                com.google.android.exoplayer2.util.a.g(i12 == i14);
                this.f23990q = 0;
            }
            i15++;
        }
    }

    private void b(float f10) {
        int iW;
        int i10 = this.f23984k;
        if (i10 < this.f23981h) {
            return;
        }
        int i11 = 0;
        do {
            if (this.f23991r > 0) {
                iW = c(i11);
            } else {
                int iG = g(this.f23983j, i11);
                iW = ((double) f10) > 1.0d ? iG + w(this.f23983j, i11, f10, iG) : m(this.f23983j, i11, f10, iG);
            }
            i11 += iW;
        } while (this.f23981h + i11 <= i10);
        v(i11);
    }

    private int c(int i10) {
        int iMin = Math.min(this.f23981h, this.f23991r);
        d(this.f23983j, i10, iMin);
        this.f23991r -= iMin;
        return iMin;
    }

    private void d(short[] sArr, int i10, int i11) {
        short[] sArrF = f(this.f23985l, this.f23986m, i11);
        this.f23985l = sArrF;
        int i12 = this.f23975b;
        System.arraycopy(sArr, i10 * i12, sArrF, this.f23986m * i12, i12 * i11);
        this.f23986m += i11;
    }

    private void e(short[] sArr, int i10, int i11) {
        int i12 = this.f23981h / i11;
        int i13 = this.f23975b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[(i16 * i14) + i15 + i18];
            }
            this.f23982i[i16] = (short) (i17 / i14);
        }
    }

    private short[] f(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.f23975b;
        int i13 = length / i12;
        return i10 + i11 <= i13 ? sArr : Arrays.copyOf(sArr, (((i13 * 3) / 2) + i11) * i12);
    }

    private int g(short[] sArr, int i10) {
        int iH;
        int i11 = this.f23974a;
        int i12 = i11 > 4000 ? i11 / 4000 : 1;
        if (this.f23975b == 1 && i12 == 1) {
            iH = h(sArr, i10, this.f23979f, this.f23980g);
        } else {
            e(sArr, i10, i12);
            int iH2 = h(this.f23982i, 0, this.f23979f / i12, this.f23980g / i12);
            if (i12 != 1) {
                int i13 = iH2 * i12;
                int i14 = i12 * 4;
                int i15 = i13 - i14;
                int i16 = i13 + i14;
                int i17 = this.f23979f;
                if (i15 < i17) {
                    i15 = i17;
                }
                int i18 = this.f23980g;
                if (i16 > i18) {
                    i16 = i18;
                }
                if (this.f23975b == 1) {
                    iH = h(sArr, i10, i15, i16);
                } else {
                    e(sArr, i10, 1);
                    iH = h(this.f23982i, 0, i15, i16);
                }
            } else {
                iH = iH2;
            }
        }
        int i19 = q(this.f23994u, this.f23995v) ? this.f23992s : iH;
        this.f23993t = this.f23994u;
        this.f23992s = iH;
        return i19;
    }

    private int h(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.f23975b;
        int i14 = 255;
        int i15 = 1;
        int i16 = 0;
        int i17 = 0;
        while (i11 <= i12) {
            int iAbs = 0;
            for (int i18 = 0; i18 < i11; i18++) {
                iAbs += Math.abs(sArr[i13 + i18] - sArr[(i13 + i11) + i18]);
            }
            if (iAbs * i16 < i15 * i11) {
                i16 = i11;
                i15 = iAbs;
            }
            if (iAbs * i14 > i17 * i11) {
                i14 = i11;
                i17 = iAbs;
            }
            i11++;
        }
        this.f23994u = i15 / i16;
        this.f23995v = i17 / i14;
        return i16;
    }

    private int m(short[] sArr, int i10, float f10, int i11) {
        int i12;
        if (f10 < 0.5f) {
            i12 = (int) ((i11 * f10) / (1.0f - f10));
        } else {
            this.f23991r = (int) ((i11 * ((2.0f * f10) - 1.0f)) / (1.0f - f10));
            i12 = i11;
        }
        int i13 = i11 + i12;
        short[] sArrF = f(this.f23985l, this.f23986m, i13);
        this.f23985l = sArrF;
        int i14 = this.f23975b;
        System.arraycopy(sArr, i10 * i14, sArrF, this.f23986m * i14, i14 * i11);
        p(i12, this.f23975b, this.f23985l, this.f23986m + i11, sArr, i10 + i11, sArr, i10);
        this.f23986m += i13;
        return i12;
    }

    private short n(short[] sArr, int i10, int i11, int i12) {
        short s10 = sArr[i10];
        short s11 = sArr[i10 + this.f23975b];
        int i13 = this.f23990q * i11;
        int i14 = this.f23989p;
        int i15 = i14 * i12;
        int i16 = (i14 + 1) * i12;
        int i17 = i16 - i13;
        int i18 = i16 - i15;
        return (short) (((s10 * i17) + ((i18 - i17) * s11)) / i18);
    }

    private void o(int i10) {
        int i11 = this.f23986m - i10;
        short[] sArrF = f(this.f23987n, this.f23988o, i11);
        this.f23987n = sArrF;
        short[] sArr = this.f23985l;
        int i12 = this.f23975b;
        System.arraycopy(sArr, i10 * i12, sArrF, this.f23988o * i12, i12 * i11);
        this.f23986m = i10;
        this.f23988o += i11;
    }

    private static void p(int i10, int i11, short[] sArr, int i12, short[] sArr2, int i13, short[] sArr3, int i14) {
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = (i12 * i11) + i15;
            int i17 = (i14 * i11) + i15;
            int i18 = (i13 * i11) + i15;
            for (int i19 = 0; i19 < i10; i19++) {
                sArr[i16] = (short) (((sArr2[i18] * (i10 - i19)) + (sArr3[i17] * i19)) / i10);
                i16 += i11;
                i18 += i11;
                i17 += i11;
            }
        }
    }

    private boolean q(int i10, int i11) {
        return i10 != 0 && this.f23992s != 0 && i11 <= i10 * 3 && i10 * 2 > this.f23993t * 3;
    }

    private void r() {
        int i10 = this.f23986m;
        float f10 = this.f23976c;
        float f11 = this.f23977d;
        float f12 = f10 / f11;
        float f13 = this.f23978e * f11;
        double d10 = f12;
        if (d10 > 1.00001d || d10 < 0.99999d) {
            b(f12);
        } else {
            d(this.f23983j, 0, this.f23984k);
            this.f23984k = 0;
        }
        if (f13 != 1.0f) {
            a(f13, i10);
        }
    }

    private void u(int i10) {
        if (i10 == 0) {
            return;
        }
        short[] sArr = this.f23987n;
        int i11 = this.f23975b;
        System.arraycopy(sArr, i10 * i11, sArr, 0, (this.f23988o - i10) * i11);
        this.f23988o -= i10;
    }

    private void v(int i10) {
        int i11 = this.f23984k - i10;
        short[] sArr = this.f23983j;
        int i12 = this.f23975b;
        System.arraycopy(sArr, i10 * i12, sArr, 0, i12 * i11);
        this.f23984k = i11;
    }

    private int w(short[] sArr, int i10, float f10, int i11) {
        int i12;
        if (f10 >= 2.0f) {
            i12 = (int) (i11 / (f10 - 1.0f));
        } else {
            this.f23991r = (int) ((i11 * (2.0f - f10)) / (f10 - 1.0f));
            i12 = i11;
        }
        short[] sArrF = f(this.f23985l, this.f23986m, i12);
        this.f23985l = sArrF;
        p(i12, this.f23975b, sArrF, this.f23986m, sArr, i10, sArr, i10 + i11);
        this.f23986m += i12;
        return i12;
    }

    public void i() {
        this.f23984k = 0;
        this.f23986m = 0;
        this.f23988o = 0;
        this.f23989p = 0;
        this.f23990q = 0;
        this.f23991r = 0;
        this.f23992s = 0;
        this.f23993t = 0;
        this.f23994u = 0;
        this.f23995v = 0;
    }

    public void j(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.f23975b, this.f23986m);
        shortBuffer.put(this.f23985l, 0, this.f23975b * iMin);
        int i10 = this.f23986m - iMin;
        this.f23986m = i10;
        short[] sArr = this.f23985l;
        int i11 = this.f23975b;
        System.arraycopy(sArr, iMin * i11, sArr, 0, i10 * i11);
    }

    public int k() {
        return this.f23986m * this.f23975b * 2;
    }

    public int l() {
        return this.f23984k * this.f23975b * 2;
    }

    public void s() {
        int i10;
        int i11 = this.f23984k;
        float f10 = this.f23976c;
        float f11 = this.f23977d;
        int i12 = this.f23986m + ((int) ((((i11 / (f10 / f11)) + this.f23988o) / (this.f23978e * f11)) + 0.5f));
        this.f23983j = f(this.f23983j, i11, (this.f23981h * 2) + i11);
        int i13 = 0;
        while (true) {
            i10 = this.f23981h;
            int i14 = this.f23975b;
            if (i13 >= i10 * 2 * i14) {
                break;
            }
            this.f23983j[(i14 * i11) + i13] = 0;
            i13++;
        }
        this.f23984k += i10 * 2;
        r();
        if (this.f23986m > i12) {
            this.f23986m = i12;
        }
        this.f23984k = 0;
        this.f23991r = 0;
        this.f23988o = 0;
    }

    public void t(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i10 = this.f23975b;
        int i11 = iRemaining / i10;
        short[] sArrF = f(this.f23983j, this.f23984k, i11);
        this.f23983j = sArrF;
        shortBuffer.get(sArrF, this.f23984k * this.f23975b, ((i10 * i11) * 2) / 2);
        this.f23984k += i11;
        r();
    }
}
