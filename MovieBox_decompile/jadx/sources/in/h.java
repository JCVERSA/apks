package in;

import java.nio.ShortBuffer;
import java.util.Arrays;

final class h {

    private final int f62234a;

    private final int f62235b;

    private final float f62236c;

    private final float f62237d;

    private float f62238e;

    private final float f62239f;

    private final int f62240g;

    private final int f62241h;

    private final int f62242i;

    private final short[] f62243j;

    private short[] f62244k;

    private int f62245l;

    private short[] f62246m;

    private int f62247n;

    private short[] f62248o;

    private int f62249p;

    private int f62250q;

    private int f62251r;

    private int f62252s;

    private int f62253t;

    private int f62254u;

    private int f62255v;

    private int f62256w;

    public h(int i10, int i11, float f10, float f11, float f12, int i12) {
        this.f62234a = i10;
        this.f62235b = i11;
        this.f62236c = f10;
        this.f62237d = f11;
        this.f62238e = f12;
        this.f62239f = i10 / i12;
        this.f62240g = i10 / 400;
        int i13 = i10 / 65;
        this.f62241h = i13;
        int i14 = i13 * 2;
        this.f62242i = i14;
        this.f62243j = new short[i14];
        this.f62244k = new short[i14 * i11];
        this.f62246m = new short[i14 * i11];
        this.f62248o = new short[i14 * i11];
    }

    private void a(float f10, int i10) {
        int i11;
        int i12;
        if (this.f62247n == i10) {
            return;
        }
        int i13 = this.f62234a;
        int i14 = (int) (i13 / f10);
        while (true) {
            if (i14 <= 16384 && i13 <= 16384) {
                break;
            }
            i14 /= 2;
            i13 /= 2;
        }
        n(i10);
        int i15 = 0;
        while (true) {
            int i16 = this.f62249p;
            if (i15 >= i16 - 1) {
                t(i16 - 1);
                return;
            }
            while (true) {
                i11 = this.f62250q;
                int i17 = (i11 + 1) * i14;
                i12 = this.f62251r;
                if (i17 <= i12 * i13) {
                    break;
                }
                this.f62246m = f(this.f62246m, this.f62247n, 1);
                int i18 = 0;
                while (true) {
                    int i19 = this.f62235b;
                    if (i18 < i19) {
                        this.f62246m[(this.f62247n * i19) + i18] = m(this.f62248o, (i19 * i15) + i18, i13, i14);
                        i18++;
                    }
                }
                this.f62251r++;
                this.f62247n++;
            }
            int i20 = i11 + 1;
            this.f62250q = i20;
            if (i20 == i13) {
                this.f62250q = 0;
                androidx.media3.common.util.a.g(i12 == i14);
                this.f62251r = 0;
            }
            i15++;
        }
    }

    private void b(float f10) {
        int iX;
        int i10 = this.f62245l;
        if (i10 < this.f62242i) {
            return;
        }
        int i11 = 0;
        do {
            if (this.f62252s > 0) {
                iX = c(i11);
            } else {
                int iG = g(this.f62244k, i11);
                iX = ((double) f10) > 1.0d ? iG + x(this.f62244k, i11, f10, iG) : l(this.f62244k, i11, f10, iG);
            }
            i11 += iX;
        } while (this.f62242i + i11 <= i10);
        u(i11);
    }

    private int c(int i10) {
        int iMin = Math.min(this.f62242i, this.f62252s);
        d(this.f62244k, i10, iMin);
        this.f62252s -= iMin;
        return iMin;
    }

    private void d(short[] sArr, int i10, int i11) {
        short[] sArrF = f(this.f62246m, this.f62247n, i11);
        this.f62246m = sArrF;
        int i12 = this.f62235b;
        System.arraycopy(sArr, i10 * i12, sArrF, this.f62247n * i12, i12 * i11);
        this.f62247n += i11;
    }

    private void e(short[] sArr, int i10, int i11) {
        int i12 = this.f62242i / i11;
        int i13 = this.f62235b;
        int i14 = i11 * i13;
        int i15 = i10 * i13;
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = 0;
            for (int i18 = 0; i18 < i14; i18++) {
                i17 += sArr[(i16 * i14) + i15 + i18];
            }
            this.f62243j[i16] = (short) (i17 / i14);
        }
    }

    private short[] f(short[] sArr, int i10, int i11) {
        int length = sArr.length;
        int i12 = this.f62235b;
        int i13 = length / i12;
        return i10 + i11 <= i13 ? sArr : Arrays.copyOf(sArr, (((i13 * 3) / 2) + i11) * i12);
    }

    private int g(short[] sArr, int i10) {
        int iH;
        int i11 = this.f62234a;
        int i12 = i11 > 4000 ? i11 / 4000 : 1;
        if (this.f62235b == 1 && i12 == 1) {
            iH = h(sArr, i10, this.f62240g, this.f62241h);
        } else {
            e(sArr, i10, i12);
            int iH2 = h(this.f62243j, 0, this.f62240g / i12, this.f62241h / i12);
            if (i12 != 1) {
                int i13 = iH2 * i12;
                int i14 = i12 * 4;
                int i15 = i13 - i14;
                int i16 = i13 + i14;
                int i17 = this.f62240g;
                if (i15 < i17) {
                    i15 = i17;
                }
                int i18 = this.f62241h;
                if (i16 > i18) {
                    i16 = i18;
                }
                if (this.f62235b == 1) {
                    iH = h(sArr, i10, i15, i16);
                } else {
                    e(sArr, i10, 1);
                    iH = h(this.f62243j, 0, i15, i16);
                }
            } else {
                iH = iH2;
            }
        }
        int i19 = p(this.f62255v, this.f62256w) ? this.f62253t : iH;
        this.f62254u = this.f62255v;
        this.f62253t = iH;
        return i19;
    }

    private int h(short[] sArr, int i10, int i11, int i12) {
        int i13 = i10 * this.f62235b;
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
        this.f62255v = i15 / i16;
        this.f62256w = i17 / i14;
        return i16;
    }

    private int l(short[] sArr, int i10, float f10, int i11) {
        int i12;
        if (f10 < 0.5f) {
            i12 = (int) ((i11 * f10) / (1.0f - f10));
        } else {
            this.f62252s = (int) ((i11 * ((2.0f * f10) - 1.0f)) / (1.0f - f10));
            i12 = i11;
        }
        int i13 = i11 + i12;
        short[] sArrF = f(this.f62246m, this.f62247n, i13);
        this.f62246m = sArrF;
        int i14 = this.f62235b;
        System.arraycopy(sArr, i10 * i14, sArrF, this.f62247n * i14, i14 * i11);
        o(i12, this.f62235b, this.f62246m, this.f62247n + i11, sArr, i10 + i11, sArr, i10);
        this.f62247n += i13;
        return i12;
    }

    private short m(short[] sArr, int i10, int i11, int i12) {
        short s10 = sArr[i10];
        short s11 = sArr[i10 + this.f62235b];
        int i13 = this.f62251r * i11;
        int i14 = this.f62250q;
        int i15 = i14 * i12;
        int i16 = (i14 + 1) * i12;
        int i17 = i16 - i13;
        int i18 = i16 - i15;
        return (short) (((s10 * i17) + ((i18 - i17) * s11)) / i18);
    }

    private void n(int i10) {
        int i11 = this.f62247n - i10;
        short[] sArrF = f(this.f62248o, this.f62249p, i11);
        this.f62248o = sArrF;
        short[] sArr = this.f62246m;
        int i12 = this.f62235b;
        System.arraycopy(sArr, i10 * i12, sArrF, this.f62249p * i12, i12 * i11);
        this.f62247n = i10;
        this.f62249p += i11;
    }

    private static void o(int i10, int i11, short[] sArr, int i12, short[] sArr2, int i13, short[] sArr3, int i14) {
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

    private boolean p(int i10, int i11) {
        return i10 != 0 && this.f62253t != 0 && i11 <= i10 * 3 && i10 * 2 > this.f62254u * 3;
    }

    private void q() {
        int i10 = this.f62247n;
        float f10 = this.f62236c;
        float f11 = this.f62237d;
        float f12 = f10 / f11;
        float f13 = this.f62239f * f11;
        double d10 = f12;
        if (d10 > 1.00001d || d10 < 0.99999d) {
            b(f12);
        } else {
            d(this.f62244k, 0, this.f62245l);
            this.f62245l = 0;
        }
        if (f13 != 1.0f) {
            a(f13, i10);
        }
        float f14 = this.f62238e;
        if (f14 != 1.0f) {
            v(this.f62246m, i10, this.f62247n - i10, f14);
        }
    }

    private void t(int i10) {
        if (i10 == 0) {
            return;
        }
        short[] sArr = this.f62248o;
        int i11 = this.f62235b;
        System.arraycopy(sArr, i10 * i11, sArr, 0, (this.f62249p - i10) * i11);
        this.f62249p -= i10;
    }

    private void u(int i10) {
        int i11 = this.f62245l - i10;
        short[] sArr = this.f62244k;
        int i12 = this.f62235b;
        System.arraycopy(sArr, i10 * i12, sArr, 0, i12 * i11);
        this.f62245l = i11;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0014 A[PHI: r1
      0x0014: PHI (r1v2 int) = (r1v0 int), (r1v1 int) binds: [B:5:0x0012, B:8:0x0018] A[DONT_GENERATE, DONT_INLINE]] */
    private void v(short[] sArr, int i10, int i11, float f10) {
        int i12 = (int) (f10 * 4096.0f);
        int i13 = this.f62235b;
        int i14 = i10 * i13;
        int i15 = (i11 * i13) + i14;
        while (i14 < i15) {
            int i16 = (sArr[i14] * i12) >> 12;
            int i17 = 32767;
            if (i16 > 32767) {
                i16 = i17;
            } else {
                i17 = -32767;
                if (i16 < -32767) {
                    i16 = i17;
                }
            }
            sArr[i14] = (short) i16;
            i14++;
        }
    }

    private int x(short[] sArr, int i10, float f10, int i11) {
        int i12;
        if (f10 >= 2.0f) {
            i12 = (int) (i11 / (f10 - 1.0f));
        } else {
            this.f62252s = (int) ((i11 * (2.0f - f10)) / (f10 - 1.0f));
            i12 = i11;
        }
        short[] sArrF = f(this.f62246m, this.f62247n, i12);
        this.f62246m = sArrF;
        o(i12, this.f62235b, sArrF, this.f62247n, sArr, i10, sArr, i10 + i11);
        this.f62247n += i12;
        return i12;
    }

    public void i() {
        this.f62245l = 0;
        this.f62247n = 0;
        this.f62249p = 0;
        this.f62250q = 0;
        this.f62251r = 0;
        this.f62252s = 0;
        this.f62253t = 0;
        this.f62254u = 0;
        this.f62255v = 0;
        this.f62256w = 0;
    }

    public void j(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.f62235b, this.f62247n);
        shortBuffer.put(this.f62246m, 0, this.f62235b * iMin);
        int i10 = this.f62247n - iMin;
        this.f62247n = i10;
        short[] sArr = this.f62246m;
        int i11 = this.f62235b;
        System.arraycopy(sArr, iMin * i11, sArr, 0, i10 * i11);
    }

    public int k() {
        return this.f62247n * this.f62235b * 2;
    }

    public void r() {
        int i10;
        int i11 = this.f62245l;
        float f10 = this.f62236c;
        float f11 = this.f62237d;
        int i12 = this.f62247n + ((int) ((((i11 / (f10 / f11)) + this.f62249p) / (this.f62239f * f11)) + 0.5f));
        this.f62244k = f(this.f62244k, i11, (this.f62242i * 2) + i11);
        int i13 = 0;
        while (true) {
            i10 = this.f62242i;
            int i14 = this.f62235b;
            if (i13 >= i10 * 2 * i14) {
                break;
            }
            this.f62244k[(i14 * i11) + i13] = 0;
            i13++;
        }
        this.f62245l += i10 * 2;
        q();
        if (this.f62247n > i12) {
            this.f62247n = i12;
        }
        this.f62245l = 0;
        this.f62252s = 0;
        this.f62249p = 0;
    }

    public void s(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i10 = this.f62235b;
        int i11 = iRemaining / i10;
        short[] sArrF = f(this.f62244k, this.f62245l, i11);
        this.f62244k = sArrF;
        shortBuffer.get(sArrF, this.f62245l * this.f62235b, ((i10 * i11) * 2) / 2);
        this.f62245l += i11;
        q();
    }

    public void w(float f10) {
        this.f62238e = f10;
    }
}
