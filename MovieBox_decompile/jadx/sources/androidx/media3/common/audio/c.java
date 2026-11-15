package androidx.media3.common.audio;

import java.nio.ShortBuffer;
import java.util.Arrays;

final class c {

    private final int f9522a;

    private final int f9523b;

    private final float f9524c;

    private final float f9525d;

    private final float f9526e;

    private final int f9527f;

    private final int f9528g;

    private final int f9529h;

    private final short[] f9530i;

    private short[] f9531j;

    private int f9532k;

    private short[] f9533l;

    private int f9534m;

    private short[] f9535n;

    private int f9536o;

    private int f9537p;

    private int f9538q;

    private int f9539r;

    private int f9540s;

    private int f9541t;

    private int f9542u;

    private int f9543v;

    private double f9544w;

    public c(int i10, int i11, float f10, float f11, int i12) {
        this.f9522a = i10;
        this.f9523b = i11;
        this.f9524c = f10;
        this.f9525d = f11;
        this.f9526e = i10 / i12;
        this.f9527f = i10 / 400;
        int i13 = i10 / 65;
        this.f9528g = i13;
        int i14 = i13 * 2;
        this.f9529h = i14;
        this.f9530i = new short[i14];
        this.f9531j = new short[i14 * i11];
        this.f9533l = new short[i14 * i11];
        this.f9535n = new short[i14 * i11];
    }

    private void a(float f10, int i10) {
        int i11;
        int i12;
        if (this.f9534m == i10) {
            return;
        }
        int i13 = this.f9522a;
        long j10 = (long) (i13 / f10);
        long j11 = i13;
        while (j10 != 0 && j11 != 0 && j10 % 2 == 0 && j11 % 2 == 0) {
            j10 /= 2;
            j11 /= 2;
        }
        o(i10);
        int i14 = 0;
        while (true) {
            int i15 = this.f9536o;
            if (i14 >= i15 - 1) {
                u(i15 - 1);
                return;
            }
            while (true) {
                i11 = this.f9537p;
                long j12 = ((long) (i11 + 1)) * j10;
                i12 = this.f9538q;
                if (j12 <= ((long) i12) * j11) {
                    break;
                }
                this.f9533l = f(this.f9533l, this.f9534m, 1);
                int i16 = 0;
                while (true) {
                    int i17 = this.f9523b;
                    if (i16 < i17) {
                        this.f9533l[(this.f9534m * i17) + i16] = n(this.f9535n, (i17 * i14) + i16, j11, j10);
                        i16++;
                    }
                }
                this.f9538q++;
                this.f9534m++;
            }
            int i18 = i11 + 1;
            this.f9537p = i18;
            if (i18 == j11) {
                this.f9537p = 0;
                androidx.media3.common.util.a.g(((long) i12) == j10);
                this.f9538q = 0;
            }
            i14++;
        }
    }

    private void b(double d10) {
        int iM;
        int i10 = this.f9532k;
        if (i10 < this.f9529h) {
            return;
        }
        int iW = 0;
        do {
            if (this.f9539r > 0) {
                iM = c(iW);
            } else {
                int iG = g(this.f9531j, iW);
                if (d10 > 1.0d) {
                    iW += iG + w(this.f9531j, iW, d10, iG);
                } else {
                    iM = m(this.f9531j, iW, d10, iG);
                }
            }
            iW += iM;
        } while (this.f9529h + iW <= i10);
        v(iW);
    }

    private int c(int i10) {
        int iMin = Math.min(this.f9529h, this.f9539r);
        d(this.f9531j, i10, iMin);
        this.f9539r -= iMin;
        return iMin;
    }

    private void d(short[] sArr, int i10, int i11) {
        short[] sArrF = f(this.f9533l, this.f9534m, i11);
        this.f9533l = sArrF;
        int i12 = this.f9523b;
        System.arraycopy(sArr, i10 * i12, sArrF, this.f9534m * i12, i12 * i11);
        this.f9534m += i11;
    }

    private void e(short[] sArr, int i10, int i11) {
        int i12 = this.f9529h / i11;
        int i13 = this.f9523b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[(i16 * i14) + i15 + i18];
            }
            this.f9530i[i16] = (short) (i17 / i14);
        }
    }

    private short[] f(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.f9523b;
        int i13 = length / i12;
        return i10 + i11 <= i13 ? sArr : Arrays.copyOf(sArr, (((i13 * 3) / 2) + i11) * i12);
    }

    private int g(short[] sArr, int i10) {
        int iH;
        int i11 = this.f9522a;
        int i12 = i11 > 4000 ? i11 / 4000 : 1;
        if (this.f9523b == 1 && i12 == 1) {
            iH = h(sArr, i10, this.f9527f, this.f9528g);
        } else {
            e(sArr, i10, i12);
            int iH2 = h(this.f9530i, 0, this.f9527f / i12, this.f9528g / i12);
            if (i12 != 1) {
                int i13 = iH2 * i12;
                int i14 = i12 * 4;
                int i15 = i13 - i14;
                int i16 = i13 + i14;
                int i17 = this.f9527f;
                if (i15 < i17) {
                    i15 = i17;
                }
                int i18 = this.f9528g;
                if (i16 > i18) {
                    i16 = i18;
                }
                if (this.f9523b == 1) {
                    iH = h(sArr, i10, i15, i16);
                } else {
                    e(sArr, i10, 1);
                    iH = h(this.f9530i, 0, i15, i16);
                }
            } else {
                iH = iH2;
            }
        }
        int i19 = q(this.f9542u, this.f9543v) ? this.f9540s : iH;
        this.f9541t = this.f9542u;
        this.f9540s = iH;
        return i19;
    }

    private int h(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.f9523b;
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
        this.f9542u = i15 / i16;
        this.f9543v = i17 / i14;
        return i16;
    }

    private int m(short[] sArr, int i10, double d10, int i11) {
        int iRound;
        if (d10 < 0.5d) {
            double d11 = ((((double) i11) * d10) / (1.0d - d10)) + this.f9544w;
            iRound = (int) Math.round(d11);
            this.f9544w = d11 - ((double) iRound);
        } else {
            double d12 = ((((double) i11) * ((2.0d * d10) - 1.0d)) / (1.0d - d10)) + this.f9544w;
            int iRound2 = (int) Math.round(d12);
            this.f9539r = iRound2;
            this.f9544w = d12 - ((double) iRound2);
            iRound = i11;
        }
        int i12 = i11 + iRound;
        short[] sArrF = f(this.f9533l, this.f9534m, i12);
        this.f9533l = sArrF;
        int i13 = this.f9523b;
        System.arraycopy(sArr, i10 * i13, sArrF, this.f9534m * i13, i13 * i11);
        p(iRound, this.f9523b, this.f9533l, this.f9534m + i11, sArr, i10 + i11, sArr, i10);
        this.f9534m += i12;
        return iRound;
    }

    private short n(short[] sArr, int i10, long j10, long j11) {
        short s10 = sArr[i10];
        short s11 = sArr[i10 + this.f9523b];
        long j12 = ((long) this.f9538q) * j10;
        int i11 = this.f9537p;
        long j13 = ((long) i11) * j11;
        long j14 = ((long) (i11 + 1)) * j11;
        long j15 = j14 - j12;
        long j16 = j14 - j13;
        return (short) (((((long) s10) * j15) + ((j16 - j15) * ((long) s11))) / j16);
    }

    private void o(int i10) {
        int i11 = this.f9534m - i10;
        short[] sArrF = f(this.f9535n, this.f9536o, i11);
        this.f9535n = sArrF;
        short[] sArr = this.f9533l;
        int i12 = this.f9523b;
        System.arraycopy(sArr, i10 * i12, sArrF, this.f9536o * i12, i12 * i11);
        this.f9534m = i10;
        this.f9536o += i11;
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
        return i10 != 0 && this.f9540s != 0 && i11 <= i10 * 3 && i10 * 2 > this.f9541t * 3;
    }

    private void r() {
        int i10 = this.f9534m;
        float f10 = this.f9524c;
        float f11 = this.f9525d;
        double d10 = f10 / f11;
        float f12 = this.f9526e * f11;
        if (d10 > 1.0000100135803223d || d10 < 0.9999899864196777d) {
            b(d10);
        } else {
            d(this.f9531j, 0, this.f9532k);
            this.f9532k = 0;
        }
        if (f12 != 1.0f) {
            a(f12, i10);
        }
    }

    private void u(int i10) {
        if (i10 == 0) {
            return;
        }
        short[] sArr = this.f9535n;
        int i11 = this.f9523b;
        System.arraycopy(sArr, i10 * i11, sArr, 0, (this.f9536o - i10) * i11);
        this.f9536o -= i10;
    }

    private void v(int i10) {
        int i11 = this.f9532k - i10;
        short[] sArr = this.f9531j;
        int i12 = this.f9523b;
        System.arraycopy(sArr, i10 * i12, sArr, 0, i12 * i11);
        this.f9532k = i11;
    }

    private int w(short[] sArr, int i10, double d10, int i11) {
        int iRound;
        if (d10 >= 2.0d) {
            double d11 = (((double) i11) / (d10 - 1.0d)) + this.f9544w;
            iRound = (int) Math.round(d11);
            this.f9544w = d11 - ((double) iRound);
        } else {
            double d12 = ((((double) i11) * (2.0d - d10)) / (d10 - 1.0d)) + this.f9544w;
            int iRound2 = (int) Math.round(d12);
            this.f9539r = iRound2;
            this.f9544w = d12 - ((double) iRound2);
            iRound = i11;
        }
        short[] sArrF = f(this.f9533l, this.f9534m, iRound);
        this.f9533l = sArrF;
        p(iRound, this.f9523b, sArrF, this.f9534m, sArr, i10, sArr, i10 + i11);
        this.f9534m += iRound;
        return iRound;
    }

    public void i() {
        this.f9532k = 0;
        this.f9534m = 0;
        this.f9536o = 0;
        this.f9537p = 0;
        this.f9538q = 0;
        this.f9539r = 0;
        this.f9540s = 0;
        this.f9541t = 0;
        this.f9542u = 0;
        this.f9543v = 0;
        this.f9544w = 0.0d;
    }

    public void j(ShortBuffer shortBuffer) {
        androidx.media3.common.util.a.g(this.f9534m >= 0);
        int iMin = Math.min(shortBuffer.remaining() / this.f9523b, this.f9534m);
        shortBuffer.put(this.f9533l, 0, this.f9523b * iMin);
        int i10 = this.f9534m - iMin;
        this.f9534m = i10;
        short[] sArr = this.f9533l;
        int i11 = this.f9523b;
        System.arraycopy(sArr, iMin * i11, sArr, 0, i10 * i11);
    }

    public int k() {
        androidx.media3.common.util.a.g(this.f9534m >= 0);
        return this.f9534m * this.f9523b * 2;
    }

    public int l() {
        return this.f9532k * this.f9523b * 2;
    }

    public void s() {
        int i10;
        int i11 = this.f9532k;
        float f10 = this.f9524c;
        float f11 = this.f9525d;
        double d10 = f10 / f11;
        double d11 = this.f9526e * f11;
        int i12 = this.f9539r;
        int i13 = this.f9534m + ((int) ((((((((double) (i11 - i12)) / d10) + ((double) i12)) + this.f9544w) + ((double) this.f9536o)) / d11) + 0.5d));
        this.f9544w = 0.0d;
        this.f9531j = f(this.f9531j, i11, (this.f9529h * 2) + i11);
        int i14 = 0;
        while (true) {
            i10 = this.f9529h;
            int i15 = this.f9523b;
            if (i14 >= i10 * 2 * i15) {
                break;
            }
            this.f9531j[(i15 * i11) + i14] = 0;
            i14++;
        }
        this.f9532k += i10 * 2;
        r();
        if (this.f9534m > i13) {
            this.f9534m = Math.max(i13, 0);
        }
        this.f9532k = 0;
        this.f9539r = 0;
        this.f9536o = 0;
    }

    public void t(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i10 = this.f9523b;
        int i11 = iRemaining / i10;
        short[] sArrF = f(this.f9531j, this.f9532k, i11);
        this.f9531j = sArrF;
        shortBuffer.get(sArrF, this.f9532k * this.f9523b, ((i10 * i11) * 2) / 2);
        this.f9532k += i11;
        r();
    }
}
