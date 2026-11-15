package defpackage;

import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import java.nio.ShortBuffer;
import java.util.Arrays;

public final class wsf {
    public final int a;
    public final int b;
    public final float c;
    public final float d;
    public final float e;
    public final int f;
    public final int g;
    public final int h;
    public final short[] i;
    public short[] j;
    public int k;
    public short[] l;
    public int m;
    public short[] n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public double w;

    public wsf(int i, int i2, float f, float f2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = f;
        this.d = f2;
        this.e = i / i3;
        this.f = i / 400;
        int i4 = i / 65;
        this.g = i4;
        int i5 = i4 + i4;
        this.h = i5;
        this.i = new short[i5];
        int i6 = i5 * i2;
        this.j = new short[i6];
        this.l = new short[i6];
        this.n = new short[i6];
    }

    public static void j(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i4 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i3 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i9] = (short) (((sArr2[i7] * (i - i10)) + (sArr3[i8] * i10)) / i);
                i9 += i2;
                i7 += i2;
                i8 += i2;
            }
        }
    }

    public final int a() {
        n7g.f(this.m >= 0);
        int i = this.m * this.b;
        return i + i;
    }

    public final int b() {
        int i = this.k * this.b;
        return i + i;
    }

    public final void c() {
        this.k = 0;
        this.m = 0;
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.w = 0.0d;
    }

    public final void d(ShortBuffer shortBuffer) {
        n7g.f(this.m >= 0);
        int iRemaining = shortBuffer.remaining();
        int i = this.b;
        int iMin = Math.min(iRemaining / i, this.m);
        int i2 = iMin * i;
        shortBuffer.put(this.l, 0, i2);
        int i3 = this.m - iMin;
        this.m = i3;
        short[] sArr = this.l;
        System.arraycopy(sArr, i2, sArr, 0, i3 * i);
    }

    public final void e() {
        int i = this.k;
        int i2 = this.r;
        int i3 = this.m;
        float f = this.c;
        float f2 = this.d;
        int i4 = i3 + ((int) ((((((((double) (i - i2)) / ((double) (f / f2))) + ((double) i2)) + this.w) + ((double) this.o)) / ((double) (this.e * f2))) + 0.5d));
        this.w = 0.0d;
        int i5 = this.h;
        int i6 = i5 + i5;
        this.j = l(this.j, i, i + i6);
        int i7 = 0;
        while (true) {
            int i8 = this.b;
            if (i7 >= i6 * i8) {
                break;
            }
            this.j[(i8 * i) + i7] = 0;
            i7++;
        }
        this.k += i6;
        k();
        if (this.m > i4) {
            this.m = Math.max(i4, 0);
        }
        this.k = 0;
        this.r = 0;
        this.o = 0;
    }

    public final void f(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i = this.b;
        int i2 = iRemaining / i;
        int i3 = i2 * i;
        short[] sArrL = l(this.j, this.k, i2);
        this.j = sArrL;
        shortBuffer.get(sArrL, this.k * i, (i3 + i3) / 2);
        this.k += i2;
        k();
    }

    public final int g(short[] sArr, int i, int i2, int i3) {
        int i4 = 1;
        int i5 = 255;
        int i6 = 0;
        int i7 = 0;
        while (i2 <= i3) {
            int iAbs = 0;
            for (int i8 = 0; i8 < i2; i8++) {
                int i9 = this.b * i;
                iAbs += Math.abs(sArr[i9 + i8] - sArr[(i9 + i2) + i8]);
            }
            int i10 = iAbs * i6;
            int i11 = i4 * i2;
            if (i10 < i11) {
                i4 = iAbs;
            }
            if (i10 < i11) {
                i6 = i2;
            }
            int i12 = iAbs * i5;
            int i13 = i7 * i2;
            if (i12 > i13) {
                i7 = iAbs;
            }
            if (i12 > i13) {
                i5 = i2;
            }
            i2++;
        }
        this.u = i4 / i6;
        this.v = i7 / i5;
        return i6;
    }

    public final void h(short[] sArr, int i, int i2) {
        short[] sArrL = l(this.l, this.m, i2);
        this.l = sArrL;
        int i3 = this.m;
        int i4 = this.b;
        System.arraycopy(sArr, i * i4, sArrL, i3 * i4, i2 * i4);
        this.m += i2;
    }

    public final void i(short[] sArr, int i, int i2) {
        int i3;
        for (int i4 = 0; i4 < this.h / i2; i4++) {
            int i5 = 0;
            int i6 = 0;
            while (true) {
                int i7 = this.b;
                i3 = i7 * i2;
                if (i5 < i3) {
                    i6 += sArr[(i7 * i) + (i3 * i4) + i5];
                    i5++;
                }
            }
            this.i[i4] = (short) (i6 / i3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0082  */
    /* JADX WARN: Code duplicated, block: B:30:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:0x0090  */
    /* JADX WARN: Code duplicated, block: B:36:0x0094  */
    /* JADX WARN: Code duplicated, block: B:38:0x009a  */
    /* JADX WARN: Code duplicated, block: B:39:0x00a2  */
    public final void k() {
        short[] sArr;
        int i;
        int i2;
        int iG;
        int iG2;
        int i3;
        int i4;
        int i5;
        int iRound;
        int i6;
        int i7;
        int i8;
        float f;
        int i9;
        int i10;
        int i11;
        int i12;
        long j;
        long j2;
        float f2 = this.c;
        float f3 = this.d;
        double d = f2 / f3;
        int i13 = this.m;
        int i14 = 0;
        int i15 = 1;
        if (d > 1.0000100135803223d || d < 0.9999899864196777d) {
            int i16 = this.k;
            int i17 = this.h;
            if (i16 >= i17) {
                int i18 = 0;
                while (true) {
                    int i19 = this.r;
                    if (i19 > 0) {
                        int iMin = Math.min(i17, i19);
                        h(this.j, i18, iMin);
                        this.r -= iMin;
                        i18 += iMin;
                        d = d;
                        i13 = i13;
                    } else {
                        short[] sArr2 = this.j;
                        int i20 = this.a;
                        int i21 = i20 > 4000 ? i20 / FlacTagCreator.DEFAULT_PADDING : i15;
                        int i22 = this.b;
                        if (i22 != i15) {
                            i(sArr2, i18, i21);
                            sArr = this.i;
                            i = this.f;
                            i2 = this.g;
                            iG = g(sArr, i14, i / i21, i2 / i21);
                            if (i21 != 1) {
                                int i23 = iG * i21;
                                int i24 = i21 * 4;
                                i4 = i23 - i24;
                                if (i4 >= i) {
                                    i = i4;
                                }
                                i5 = i23 + i24;
                                if (i5 <= i2) {
                                    i2 = i5;
                                }
                                if (i22 == 1) {
                                    iG2 = g(sArr2, i18, i, i2);
                                } else {
                                    i(sArr2, i18, 1);
                                    iG2 = g(sArr, i14, i, i2);
                                }
                            } else {
                                iG2 = iG;
                            }
                            i3 = i22;
                        } else if (i21 == i15) {
                            iG2 = g(sArr2, i18, this.f, this.g);
                            i3 = i15;
                        } else {
                            i22 = i15;
                            i(sArr2, i18, i21);
                            sArr = this.i;
                            i = this.f;
                            i2 = this.g;
                            iG = g(sArr, i14, i / i21, i2 / i21);
                            if (i21 != 1) {
                                int i25 = iG * i21;
                                int i26 = i21 * 4;
                                i4 = i25 - i26;
                                if (i4 >= i) {
                                    i = i4;
                                }
                                i5 = i25 + i26;
                                if (i5 <= i2) {
                                    i2 = i5;
                                }
                                if (i22 == 1) {
                                    iG2 = g(sArr2, i18, i, i2);
                                } else {
                                    i(sArr2, i18, 1);
                                    iG2 = g(sArr, i14, i, i2);
                                }
                            } else {
                                iG2 = iG;
                            }
                            i3 = i22;
                        }
                        int i27 = this.u;
                        int i28 = (i27 == 0 || (i8 = this.s) == 0 || this.v > i27 * 3 || i27 + i27 <= this.t * 3) ? iG2 : i8;
                        int i29 = i18 + i28;
                        this.t = i27;
                        this.s = iG2;
                        double d2 = i28;
                        if (d > 1.0d) {
                            short[] sArr3 = this.j;
                            double d3 = d - 1.0d;
                            if (d >= 2.0d) {
                                double d4 = (d2 / d3) + this.w;
                                int iRound2 = (int) Math.round(d4);
                                this.w = d4 - ((double) iRound2);
                                i6 = i28;
                                i7 = iRound2;
                            } else {
                                i6 = i28;
                                double d5 = ((d2 * (2.0d - d)) / d3) + this.w;
                                int iRound3 = (int) Math.round(d5);
                                this.r = iRound3;
                                this.w = d5 - ((double) iRound3);
                                i7 = i6;
                            }
                            short[] sArrL = l(this.l, this.m, i7);
                            this.l = sArrL;
                            j(i7, i3, sArrL, this.m, sArr3, i18, sArr3, i29);
                            this.m += i7;
                            i18 += i6 + i7;
                            d = d;
                        } else {
                            int i30 = i28;
                            int i31 = i18;
                            short[] sArr4 = this.j;
                            double d6 = 1.0d - d;
                            if (d < 0.5d) {
                                double d7 = ((d2 * d) / d6) + this.w;
                                iRound = (int) Math.round(d7);
                                this.w = d7 - ((double) iRound);
                            } else {
                                double d8 = ((d2 * ((d + d) - 1.0d)) / d6) + this.w;
                                int iRound4 = (int) Math.round(d8);
                                this.r = iRound4;
                                this.w = d8 - ((double) iRound4);
                                iRound = i30;
                            }
                            int i32 = i30 + iRound;
                            short[] sArrL2 = l(this.l, this.m, i32);
                            this.l = sArrL2;
                            System.arraycopy(sArr4, i31 * i3, sArrL2, this.m * i3, i30 * i3);
                            j(iRound, i3, this.l, this.m + i30, sArr4, i29, sArr4, i31);
                            this.m += i32;
                            i18 = i31 + iRound;
                        }
                    }
                    if (i18 + i17 > i16) {
                        break;
                    }
                    i13 = i13;
                    d = d;
                    i14 = 0;
                    i15 = 1;
                }
                int i33 = this.k - i18;
                short[] sArr5 = this.j;
                int i34 = this.b;
                System.arraycopy(sArr5, i18 * i34, sArr5, 0, i34 * i33);
                this.k = i33;
            }
            f = this.e * f3;
            if (f != 1.0f || this.m == (i9 = i13)) {
            }
            int i35 = this.a;
            float f4 = i35 / f;
            long j3 = i35;
            long j4 = (long) f4;
            while (j4 != 0 && j3 != 0 && j4 % 2 == 0 && j3 % 2 == 0) {
                j4 /= 2;
                j3 /= 2;
            }
            int i36 = this.m - i9;
            short[] sArrL3 = l(this.n, this.o, i36);
            this.n = sArrL3;
            short[] sArr6 = this.l;
            int i37 = this.b;
            System.arraycopy(sArr6, i9 * i37, sArrL3, this.o * i37, i36 * i37);
            this.m = i9;
            this.o += i36;
            int i38 = 0;
            while (true) {
                i10 = this.o;
                i11 = i10 - 1;
                if (i38 >= i11) {
                    break;
                }
                while (true) {
                    i12 = this.p + 1;
                    j = i12;
                    long j5 = j * j4;
                    j2 = this.q;
                    if (j5 <= j2 * j3) {
                        break;
                    }
                    this.l = l(this.l, this.m, 1);
                    int i39 = 0;
                    while (i39 < i37) {
                        short[] sArr7 = this.l;
                        int i40 = this.m * i37;
                        short[] sArr8 = this.n;
                        int i41 = (i38 * i37) + i39;
                        short s = sArr8[i41];
                        short s2 = sArr8[i41 + i37];
                        long j6 = ((long) this.q) * j3;
                        int i42 = this.p;
                        long j7 = j3;
                        int i43 = i39;
                        long j8 = ((long) (i42 + 1)) * j4;
                        long j9 = j8 - (((long) i42) * j4);
                        long j10 = j8 - j6;
                        sArr7[i40 + i43] = (short) (((j10 * ((long) s)) + ((j9 - j10) * ((long) s2))) / j9);
                        i39 = i43 + 1;
                        j3 = j7;
                        i37 = i37;
                    }
                    this.q++;
                    this.m++;
                    j3 = j3;
                    i37 = i37;
                }
                long j11 = j3;
                int i44 = i37;
                this.p = i12;
                if (j == j11) {
                    this.p = 0;
                    n7g.f(j2 == j4);
                    this.q = 0;
                }
                i38++;
                j3 = j11;
                i37 = i44;
            }
            int i45 = i37;
            if (i11 != 0) {
                short[] sArr9 = this.n;
                System.arraycopy(sArr9, i11 * i45, sArr9, 0, (i10 - i11) * i45);
                this.o -= i11;
                return;
            }
            return;
        }
        h(this.j, 0, this.k);
        this.k = 0;
        i13 = i13;
        f = this.e * f3;
        if (f != 1.0f) {
        }
    }

    public final short[] l(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }
}
