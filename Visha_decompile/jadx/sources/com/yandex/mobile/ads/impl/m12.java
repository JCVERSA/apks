package com.yandex.mobile.ads.impl;

import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import java.nio.ShortBuffer;
import java.util.Arrays;

final class m12 {
    private final int a;
    private final int b;
    private final float c;
    private final float d;
    private final float e;
    private final int f;
    private final int g;
    private final int h;
    private final short[] i;
    private short[] j;
    private int k;
    private short[] l;
    private int m;
    private short[] n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;

    public m12(int i, int i2, float f, float f2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = f;
        this.d = f2;
        this.e = i / i3;
        this.f = i / 400;
        int i4 = i / 65;
        this.g = i4;
        int i5 = i4 * 2;
        this.h = i5;
        this.i = new short[i5];
        int i6 = i5 * i2;
        this.j = new short[i6];
        this.l = new short[i6];
        this.n = new short[i6];
    }

    private void a(short[] sArr, int i, int i2) {
        int i3 = this.h / i2;
        int i4 = this.b;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.i[i7] = (short) (i8 / i5);
        }
    }

    private short[] b(short[] sArr, int i, int i2) {
        int length = sArr.length;
        int i3 = this.b;
        int i4 = length / i3;
        return i + i2 <= i4 ? sArr : Arrays.copyOf(sArr, (((i4 * 3) / 2) + i2) * i3);
    }

    /* JADX WARN: Code duplicated, block: B:107:0x018e A[EDGE_INSN: B:107:0x018e->B:65:0x018e BREAK  A[LOOP:4: B:13:0x004a->B:99:0x025e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x025e A[LOOP:4: B:13:0x004a->B:99:0x025e, LOOP_END] */
    private void d() {
        int iA;
        int i;
        int iMin;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.m;
        float f = this.c;
        float f2 = this.d;
        float f3 = f / f2;
        float f4 = this.e * f2;
        double d = f3;
        int i7 = 1;
        if (d > 1.00001d || d < 0.99999d) {
            int i8 = this.k;
            if (i8 >= this.h) {
                int i9 = 0;
                while (true) {
                    int i10 = this.r;
                    if (i10 > 0) {
                        iMin = Math.min(this.h, i10);
                        short[] sArr = this.j;
                        short[] sArrB = b(this.l, this.m, iMin);
                        this.l = sArrB;
                        int i11 = this.b;
                        System.arraycopy(sArr, i9 * i11, sArrB, this.m * i11, i11 * iMin);
                        this.m += iMin;
                        this.r -= iMin;
                    } else {
                        short[] sArr2 = this.j;
                        int i12 = this.a;
                        int i13 = i12 > 4000 ? i12 / FlacTagCreator.DEFAULT_PADDING : i7;
                        if (this.b == i7 && i13 == i7) {
                            iA = a(sArr2, i9, this.f, this.g);
                        } else {
                            a(sArr2, i9, i13);
                            int iA2 = a(this.i, 0, this.f / i13, this.g / i13);
                            if (i13 != i7) {
                                int i14 = iA2 * i13;
                                int i15 = i13 * 4;
                                int i16 = i14 - i15;
                                int i17 = i14 + i15;
                                int i18 = this.f;
                                if (i16 < i18) {
                                    i16 = i18;
                                }
                                int i19 = this.g;
                                if (i17 > i19) {
                                    i17 = i19;
                                }
                                if (this.b == i7) {
                                    iA = a(sArr2, i9, i16, i17);
                                } else {
                                    a(sArr2, i9, i7);
                                    iA = a(this.i, 0, i16, i17);
                                }
                            } else {
                                iA = iA2;
                            }
                        }
                        int i20 = this.u;
                        int i21 = (i20 == 0 || (i3 = this.s) == 0 || this.v > i20 * 3 || i20 * 2 <= this.t * 3) ? iA : i3;
                        this.t = i20;
                        this.s = iA;
                        if (d > 1.0d) {
                            short[] sArr3 = this.j;
                            if (f3 >= 2.0f) {
                                i2 = (int) (i21 / (f3 - 1.0f));
                            } else {
                                this.r = (int) (((2.0f - f3) * i21) / (f3 - 1.0f));
                                i2 = i21;
                            }
                            short[] sArrB2 = b(this.l, this.m, i2);
                            this.l = sArrB2;
                            int i22 = i2;
                            a(i2, this.b, sArrB2, this.m, sArr3, i9, sArr3, i9 + i21);
                            this.m += i22;
                            i9 = i21 + i22 + i9;
                        } else {
                            int i23 = i21;
                            short[] sArr4 = this.j;
                            if (f3 < 0.5f) {
                                i = (int) ((i23 * f3) / (1.0f - f3));
                            } else {
                                this.r = (int) ((((2.0f * f3) - 1.0f) * i23) / (1.0f - f3));
                                i = i23;
                            }
                            int i24 = i23 + i;
                            short[] sArrB3 = b(this.l, this.m, i24);
                            this.l = sArrB3;
                            int i25 = this.b;
                            System.arraycopy(sArr4, i9 * i25, sArrB3, this.m * i25, i25 * i23);
                            iMin = i;
                            a(iMin, this.b, this.l, this.m + i23, sArr4, i9 + i23, sArr4, i9);
                            this.m += i24;
                        }
                        if (this.h + i9 > i8) {
                            break;
                        } else {
                            i7 = 1;
                        }
                    }
                    i9 += iMin;
                    if (this.h + i9 > i8) {
                        break;
                        break;
                    }
                    i7 = 1;
                }
                int i26 = this.k - i9;
                short[] sArr5 = this.j;
                int i27 = this.b;
                System.arraycopy(sArr5, i9 * i27, sArr5, 0, i27 * i26);
                this.k = i26;
            }
        } else {
            short[] sArr6 = this.j;
            int i28 = this.k;
            short[] sArrB4 = b(this.l, i6, i28);
            this.l = sArrB4;
            int i29 = this.b;
            System.arraycopy(sArr6, 0, sArrB4, this.m * i29, i29 * i28);
            this.m += i28;
            this.k = 0;
        }
        if (f4 == 1.0f || this.m == i6) {
            return;
        }
        int i30 = this.a;
        int i31 = (int) (i30 / f4);
        while (true) {
            if (i31 <= 16384 && i30 <= 16384) {
                break;
            }
            i31 /= 2;
            i30 /= 2;
        }
        int i32 = this.m - i6;
        short[] sArrB5 = b(this.n, this.o, i32);
        this.n = sArrB5;
        short[] sArr7 = this.l;
        int i33 = this.b;
        System.arraycopy(sArr7, i6 * i33, sArrB5, this.o * i33, i33 * i32);
        this.m = i6;
        this.o += i32;
        int i34 = 0;
        while (true) {
            int i35 = this.o;
            int i36 = i35 - 1;
            if (i34 >= i36) {
                if (i36 == 0) {
                    return;
                }
                short[] sArr8 = this.n;
                int i37 = this.b;
                System.arraycopy(sArr8, i36 * i37, sArr8, 0, (i35 - i36) * i37);
                this.o -= i36;
                return;
            }
            while (true) {
                i4 = this.p + 1;
                int i38 = i4 * i31;
                i5 = this.q;
                if (i38 <= i5 * i30) {
                    break;
                }
                this.l = b(this.l, this.m, 1);
                int i39 = 0;
                while (true) {
                    int i40 = this.b;
                    if (i39 < i40) {
                        short[] sArr9 = this.l;
                        int i41 = (this.m * i40) + i39;
                        short[] sArr10 = this.n;
                        int i42 = (i34 * i40) + i39;
                        short s = sArr10[i42];
                        short s2 = sArr10[i42 + i40];
                        int i43 = this.q * i30;
                        int i44 = this.p;
                        int i45 = i44 * i31;
                        int i46 = (i44 + 1) * i31;
                        int i47 = i46 - i43;
                        int i48 = i46 - i45;
                        sArr9[i41] = (short) ((((i48 - i47) * s2) + (s * i47)) / i48);
                        i39++;
                    }
                }
                this.q++;
                this.m++;
            }
            this.p = i4;
            if (i4 == i30) {
                this.p = 0;
                if (i5 != i31) {
                    throw new IllegalStateException();
                }
                this.q = 0;
            }
            i34++;
        }
    }

    public final int c() {
        return this.k * this.b * 2;
    }

    public final void e() {
        int i;
        int i2 = this.k;
        float f = this.c;
        float f2 = this.d;
        int i3 = this.m + ((int) ((((i2 / (f / f2)) + this.o) / (this.e * f2)) + 0.5f));
        this.j = b(this.j, i2, (this.h * 2) + i2);
        int i4 = 0;
        while (true) {
            i = this.h * 2;
            int i5 = this.b;
            if (i4 >= i * i5) {
                break;
            }
            this.j[(i5 * i2) + i4] = 0;
            i4++;
        }
        this.k = i + this.k;
        d();
        if (this.m > i3) {
            this.m = i3;
        }
        this.k = 0;
        this.r = 0;
        this.o = 0;
    }

    public final int b() {
        return this.m * this.b * 2;
    }

    public final void b(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i = this.b;
        int i2 = iRemaining / i;
        short[] sArrB = b(this.j, this.k, i2);
        this.j = sArrB;
        shortBuffer.get(sArrB, this.k * this.b, ((i * i2) * 2) / 2);
        this.k += i2;
        d();
    }

    private int a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.b;
        int i5 = 255;
        int i6 = 1;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int iAbs = 0;
            for (int i9 = 0; i9 < i2; i9++) {
                iAbs += Math.abs(sArr[i4 + i9] - sArr[(i4 + i2) + i9]);
            }
            if (iAbs * i7 < i6 * i2) {
                i7 = i2;
                i6 = iAbs;
            }
            if (iAbs * i5 > i8 * i2) {
                i5 = i2;
                i8 = iAbs;
            }
            i2++;
        }
        this.u = i6 / i7;
        this.v = i8 / i5;
        return i7;
    }

    public final void a() {
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
    }

    public final void a(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.b, this.m);
        shortBuffer.put(this.l, 0, this.b * iMin);
        int i = this.m - iMin;
        this.m = i;
        short[] sArr = this.l;
        int i2 = this.b;
        System.arraycopy(sArr, iMin * i2, sArr, 0, i * i2);
    }

    private static void a(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i9])) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }
}
