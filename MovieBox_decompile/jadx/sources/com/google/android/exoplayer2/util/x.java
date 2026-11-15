package com.google.android.exoplayer2.util;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
import java.util.Arrays;

public abstract class x {

    public static final byte[] f26892a = {0, 0, 0, 1};

    public static final float[] f26893b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    private static final Object f26894c = new Object();

    private static int[] f26895d = new int[10];

    public static final class a {

        public final int f26896a;

        public final boolean f26897b;

        public final int f26898c;

        public final int f26899d;

        public final int[] f26900e;

        public final int f26901f;

        public final int f26902g;

        public final int f26903h;

        public final int f26904i;

        public final float f26905j;

        public a(int i10, boolean z10, int i11, int i12, int[] iArr, int i13, int i14, int i15, int i16, float f10) {
            this.f26896a = i10;
            this.f26897b = z10;
            this.f26898c = i11;
            this.f26899d = i12;
            this.f26900e = iArr;
            this.f26901f = i13;
            this.f26902g = i14;
            this.f26903h = i15;
            this.f26904i = i16;
            this.f26905j = f10;
        }
    }

    public static final class b {

        public final int f26906a;

        public final int f26907b;

        public final boolean f26908c;

        public b(int i10, int i11, boolean z10) {
            this.f26906a = i10;
            this.f26907b = i11;
            this.f26908c = z10;
        }
    }

    public static final class c {

        public final int f26909a;

        public final int f26910b;

        public final int f26911c;

        public final int f26912d;

        public final int f26913e;

        public final int f26914f;

        public final int f26915g;

        public final float f26916h;

        public final boolean f26917i;

        public final boolean f26918j;

        public final int f26919k;

        public final int f26920l;

        public final int f26921m;

        public final boolean f26922n;

        public c(int i10, int i11, int i12, int i13, int i14, int i15, int i16, float f10, boolean z10, boolean z11, int i17, int i18, int i19, boolean z12) {
            this.f26909a = i10;
            this.f26910b = i11;
            this.f26911c = i12;
            this.f26912d = i13;
            this.f26913e = i14;
            this.f26914f = i15;
            this.f26915g = i16;
            this.f26916h = f10;
            this.f26917i = z10;
            this.f26918j = z11;
            this.f26919k = i17;
            this.f26920l = i18;
            this.f26921m = i19;
            this.f26922n = z12;
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = i10 + 1;
            if (i12 >= iPosition) {
                byteBuffer.clear();
                return;
            }
            int i13 = byteBuffer.get(i10) & 255;
            if (i11 == 3) {
                if (i13 == 1 && (byteBuffer.get(i12) & 31) == 7) {
                    ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
                    byteBufferDuplicate.position(i10 - 3);
                    byteBufferDuplicate.limit(iPosition);
                    byteBuffer.position(0);
                    byteBuffer.put(byteBufferDuplicate);
                    return;
                }
            } else if (i13 == 0) {
                i11++;
            }
            if (i13 != 0) {
                i11 = 0;
            }
            i10 = i12;
        }
    }

    public static int c(byte[] bArr, int i10, int i11, boolean[] zArr) {
        int i12 = i11 - i10;
        com.google.android.exoplayer2.util.a.g(i12 >= 0);
        if (i12 == 0) {
            return i11;
        }
        if (zArr[0]) {
            a(zArr);
            return i10 - 3;
        }
        if (i12 > 1 && zArr[1] && bArr[i10] == 1) {
            a(zArr);
            return i10 - 2;
        }
        if (i12 > 2 && zArr[2] && bArr[i10] == 0 && bArr[i10 + 1] == 1) {
            a(zArr);
            return i10 - 1;
        }
        int i13 = i11 - 1;
        int i14 = i10 + 2;
        while (i14 < i13) {
            byte b10 = bArr[i14];
            if ((b10 & 254) == 0) {
                int i15 = i14 - 2;
                if (bArr[i15] == 0 && bArr[i14 - 1] == 0 && b10 == 1) {
                    a(zArr);
                    return i15;
                }
                i14 -= 2;
            }
            i14 += 3;
        }
        zArr[0] = i12 <= 2 ? !(i12 != 2 ? !(zArr[1] && bArr[i13] == 1) : !(zArr[2] && bArr[i11 + (-2)] == 0 && bArr[i13] == 1)) : bArr[i11 + (-3)] == 0 && bArr[i11 + (-2)] == 0 && bArr[i13] == 1;
        zArr[1] = i12 <= 1 ? zArr[2] && bArr[i13] == 0 : bArr[i11 + (-2)] == 0 && bArr[i13] == 0;
        zArr[2] = bArr[i13] == 0;
        return i11;
    }

    private static int d(byte[] bArr, int i10, int i11) {
        while (i10 < i11 - 2) {
            if (bArr[i10] == 0 && bArr[i10 + 1] == 0 && bArr[i10 + 2] == 3) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int e(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & 126) >> 1;
    }

    public static int f(byte[] bArr, int i10) {
        return bArr[i10 + 3] & 31;
    }

    public static boolean g(String str, byte b10) {
        if (MimeTypes.VIDEO_H264.equals(str) && (b10 & 31) == 6) {
            return true;
        }
        return MimeTypes.VIDEO_H265.equals(str) && ((b10 & 126) >> 1) == 39;
    }

    public static a h(byte[] bArr, int i10, int i11) {
        return i(bArr, i10 + 2, i11);
    }

    public static a i(byte[] bArr, int i10, int i11) {
        e0 e0Var = new e0(bArr, i10, i11);
        e0Var.l(4);
        int iE = e0Var.e(3);
        e0Var.k();
        int iE2 = e0Var.e(2);
        boolean zD = e0Var.d();
        int iE3 = e0Var.e(5);
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i13 >= 32) {
                break;
            }
            if (e0Var.d()) {
                i12 |= 1 << i13;
            }
            i13++;
        }
        int[] iArr = new int[6];
        for (int i14 = 0; i14 < 6; i14++) {
            iArr[i14] = e0Var.e(8);
        }
        int iE4 = e0Var.e(8);
        int i15 = 0;
        for (int i16 = 0; i16 < iE; i16++) {
            if (e0Var.d()) {
                i15 += 89;
            }
            if (e0Var.d()) {
                i15 += 8;
            }
        }
        e0Var.l(i15);
        if (iE > 0) {
            e0Var.l((8 - iE) * 2);
        }
        int iH = e0Var.h();
        int iH2 = e0Var.h();
        if (iH2 == 3) {
            e0Var.k();
        }
        int iH3 = e0Var.h();
        int iH4 = e0Var.h();
        if (e0Var.d()) {
            int iH5 = e0Var.h();
            int iH6 = e0Var.h();
            int iH7 = e0Var.h();
            int iH8 = e0Var.h();
            iH3 -= ((iH2 == 1 || iH2 == 2) ? 2 : 1) * (iH5 + iH6);
            iH4 -= (iH2 == 1 ? 2 : 1) * (iH7 + iH8);
        }
        int i17 = iH3;
        e0Var.h();
        e0Var.h();
        int iH9 = e0Var.h();
        for (int i18 = e0Var.d() ? 0 : iE; i18 <= iE; i18++) {
            e0Var.h();
            e0Var.h();
            e0Var.h();
        }
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        e0Var.h();
        if (e0Var.d() && e0Var.d()) {
            n(e0Var);
        }
        e0Var.l(2);
        if (e0Var.d()) {
            e0Var.l(8);
            e0Var.h();
            e0Var.h();
            e0Var.k();
        }
        p(e0Var);
        if (e0Var.d()) {
            for (int i19 = 0; i19 < e0Var.h(); i19++) {
                e0Var.l(iH9 + 5);
            }
        }
        e0Var.l(2);
        float f10 = 1.0f;
        if (e0Var.d()) {
            if (e0Var.d()) {
                int iE5 = e0Var.e(8);
                if (iE5 == 255) {
                    int iE6 = e0Var.e(16);
                    int iE7 = e0Var.e(16);
                    if (iE6 != 0 && iE7 != 0) {
                        f10 = iE6 / iE7;
                    }
                } else {
                    float[] fArr = f26893b;
                    if (iE5 < fArr.length) {
                        f10 = fArr[iE5];
                    } else {
                        s.i("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iE5);
                    }
                }
            }
            if (e0Var.d()) {
                e0Var.k();
            }
            if (e0Var.d()) {
                e0Var.l(4);
                if (e0Var.d()) {
                    e0Var.l(24);
                }
            }
            if (e0Var.d()) {
                e0Var.h();
                e0Var.h();
            }
            e0Var.k();
            if (e0Var.d()) {
                iH4 *= 2;
            }
        }
        return new a(iE2, zD, iE3, i12, iArr, iE4, iH, i17, iH4, f10);
    }

    public static b j(byte[] bArr, int i10, int i11) {
        return k(bArr, i10 + 1, i11);
    }

    public static b k(byte[] bArr, int i10, int i11) {
        e0 e0Var = new e0(bArr, i10, i11);
        int iH = e0Var.h();
        int iH2 = e0Var.h();
        e0Var.k();
        return new b(iH, iH2, e0Var.d());
    }

    public static c l(byte[] bArr, int i10, int i11) {
        return m(bArr, i10 + 1, i11);
    }

    public static c m(byte[] bArr, int i10, int i11) {
        int iH;
        boolean zD;
        boolean z10;
        int iH2;
        float f10;
        int i12;
        e0 e0Var = new e0(bArr, i10, i11);
        int iE = e0Var.e(8);
        int iE2 = e0Var.e(8);
        int iE3 = e0Var.e(8);
        int iH3 = e0Var.h();
        int i13 = 1;
        if (iE == 100 || iE == 110 || iE == 122 || iE == 244 || iE == 44 || iE == 83 || iE == 86 || iE == 118 || iE == 128 || iE == 138) {
            iH = e0Var.h();
            zD = iH == 3 ? e0Var.d() : false;
            e0Var.h();
            e0Var.h();
            e0Var.k();
            if (e0Var.d()) {
                int i14 = iH != 3 ? 8 : 12;
                int i15 = 0;
                while (i15 < i14) {
                    if (e0Var.d()) {
                        o(e0Var, i15 < 6 ? 16 : 64);
                    }
                    i15++;
                }
            }
        } else {
            iH = 1;
            zD = false;
        }
        int iH4 = e0Var.h() + 4;
        int iH5 = e0Var.h();
        if (iH5 == 0) {
            iH = iH;
            zD = zD;
            iH2 = e0Var.h() + 4;
            z10 = false;
        } else {
            if (iH5 == 1) {
                boolean zD2 = e0Var.d();
                e0Var.g();
                e0Var.g();
                long jH = e0Var.h();
                for (int i16 = 0; i16 < jH; i16++) {
                    e0Var.h();
                }
                z10 = zD2;
            } else {
                z10 = false;
            }
            iH2 = 0;
        }
        int iH6 = e0Var.h();
        e0Var.k();
        int iH7 = e0Var.h() + 1;
        int iH8 = e0Var.h() + 1;
        boolean zD3 = e0Var.d();
        int i17 = (2 - (zD3 ? 1 : 0)) * iH8;
        if (!zD3) {
            e0Var.k();
        }
        e0Var.k();
        int i18 = iH7 * 16;
        int i19 = i17 * 16;
        if (e0Var.d()) {
            int iH9 = e0Var.h();
            int iH10 = e0Var.h();
            int iH11 = e0Var.h();
            int iH12 = e0Var.h();
            if (iH == 0) {
                i12 = 2 - (zD3 ? 1 : 0);
            } else {
                int i20 = iH;
                i13 = i20 == 3 ? 1 : 2;
                i12 = (2 - (zD3 ? 1 : 0)) * (i20 == 1 ? 2 : 1);
            }
            i18 -= (iH9 + iH10) * i13;
            i19 -= (iH11 + iH12) * i12;
        }
        int i21 = i18;
        int i22 = i19;
        float f11 = 1.0f;
        if (e0Var.d() && e0Var.d()) {
            int iE4 = e0Var.e(8);
            if (iE4 == 255) {
                int iE5 = e0Var.e(16);
                int iE6 = e0Var.e(16);
                if (iE5 != 0 && iE6 != 0) {
                    f11 = iE5 / iE6;
                }
            } else {
                float[] fArr = f26893b;
                if (iE4 < fArr.length) {
                    f10 = fArr[iE4];
                } else {
                    s.i("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iE4);
                }
            }
            f10 = f11;
        } else {
            f10 = f11;
        }
        return new c(iE, iE2, iE3, iH3, iH6, i21, i22, f10, zD, zD3, iH4, iH5, iH2, z10);
    }

    private static void n(e0 e0Var) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int i12 = 1;
                if (e0Var.d()) {
                    int iMin = Math.min(64, 1 << ((i10 << 1) + 4));
                    if (i10 > 1) {
                        e0Var.g();
                    }
                    for (int i13 = 0; i13 < iMin; i13++) {
                        e0Var.g();
                    }
                } else {
                    e0Var.h();
                }
                if (i10 == 3) {
                    i12 = 3;
                }
                i11 += i12;
            }
        }
    }

    private static void o(e0 e0Var, int i10) {
        int iG = 8;
        int i11 = 8;
        for (int i12 = 0; i12 < i10; i12++) {
            if (iG != 0) {
                iG = ((e0Var.g() + i11) + 256) % 256;
            }
            if (iG != 0) {
                i11 = iG;
            }
        }
    }

    private static void p(e0 e0Var) {
        int iH = e0Var.h();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < iH; i12++) {
            if (i12 == 0 || !e0Var.d()) {
                int iH2 = e0Var.h();
                int iH3 = e0Var.h();
                int[] iArr2 = new int[iH2];
                for (int i13 = 0; i13 < iH2; i13++) {
                    iArr2[i13] = e0Var.h() + 1;
                    e0Var.k();
                }
                int[] iArr3 = new int[iH3];
                for (int i14 = 0; i14 < iH3; i14++) {
                    iArr3[i14] = e0Var.h() + 1;
                    e0Var.k();
                }
                i10 = iH2;
                iArr = iArr2;
                i11 = iH3;
                iArrCopyOf = iArr3;
            } else {
                int i15 = i10 + i11;
                int iH4 = (1 - ((e0Var.d() ? 1 : 0) * 2)) * (e0Var.h() + 1);
                int i16 = i15 + 1;
                boolean[] zArr = new boolean[i16];
                for (int i17 = 0; i17 <= i15; i17++) {
                    if (e0Var.d()) {
                        zArr[i17] = true;
                    } else {
                        zArr[i17] = e0Var.d();
                    }
                }
                int[] iArr4 = new int[i16];
                int[] iArr5 = new int[i16];
                int i18 = 0;
                for (int i19 = i11 - 1; i19 >= 0; i19--) {
                    int i20 = iArrCopyOf[i19] + iH4;
                    if (i20 < 0 && zArr[i10 + i19]) {
                        iArr4[i18] = i20;
                        i18++;
                    }
                }
                if (iH4 < 0 && zArr[i15]) {
                    iArr4[i18] = iH4;
                    i18++;
                }
                for (int i21 = 0; i21 < i10; i21++) {
                    int i22 = iArr[i21] + iH4;
                    if (i22 < 0 && zArr[i21]) {
                        iArr4[i18] = i22;
                        i18++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr4, i18);
                int i23 = 0;
                for (int i24 = i10 - 1; i24 >= 0; i24--) {
                    int i25 = iArr[i24] + iH4;
                    if (i25 > 0 && zArr[i24]) {
                        iArr5[i23] = i25;
                        i23++;
                    }
                }
                if (iH4 > 0 && zArr[i15]) {
                    iArr5[i23] = iH4;
                    i23++;
                }
                for (int i26 = 0; i26 < i11; i26++) {
                    int i27 = iArrCopyOf[i26] + iH4;
                    if (i27 > 0 && zArr[i10 + i26]) {
                        iArr5[i23] = i27;
                        i23++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr5, i23);
                iArr = iArrCopyOf2;
                i10 = i18;
                i11 = i23;
            }
        }
    }

    public static int q(byte[] bArr, int i10) {
        int i11;
        synchronized (f26894c) {
            int iD = 0;
            int i12 = 0;
            while (iD < i10) {
                try {
                    iD = d(bArr, iD, i10);
                    if (iD < i10) {
                        int[] iArr = f26895d;
                        if (iArr.length <= i12) {
                            f26895d = Arrays.copyOf(iArr, iArr.length * 2);
                        }
                        f26895d[i12] = iD;
                        iD += 3;
                        i12++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            i11 = i10 - i12;
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < i12; i15++) {
                int i16 = f26895d[i15] - i14;
                System.arraycopy(bArr, i14, bArr, i13, i16);
                int i17 = i13 + i16;
                int i18 = i17 + 1;
                bArr[i17] = 0;
                i13 = i17 + 2;
                bArr[i18] = 0;
                i14 += i16 + 3;
            }
            System.arraycopy(bArr, i14, bArr, i13, i11 - i13);
        }
        return i11;
    }
}
