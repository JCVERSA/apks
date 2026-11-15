package defpackage;

import androidx.collection.ScatterMapKt;
import java.lang.reflect.Array;

public class vo0 {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int[] k;
    public final int l;
    public y94 m;
    public f40 n;
    public boolean o;
    public boolean p;
    public boolean q;

    public vo0(int i, int i2, int i3, int[] iArr, boolean z, int i4) {
        f40 e40Var;
        this.q = z;
        this.a = i2;
        this.b = i3;
        this.c = i;
        this.k = iArr;
        this.l = i4;
        this.d = i3 * 2;
        this.e = (1 << (i - 4)) * ((i * 2) - 1);
        int i5 = i3 * i;
        this.f = i5;
        int i6 = i2 - i5;
        this.g = i6;
        this.h = (i6 + 7) / 8;
        this.i = (i5 + 7) / 8;
        this.j = (1 << i) - 1;
        if (i == 12) {
            this.m = new r94();
            e40Var = new d40(this.a, this.b, this.c);
        } else {
            this.m = new s94();
            e40Var = new e40(this.a, this.b, this.c);
        }
        this.n = e40Var;
        this.o = this.b % 8 != 0;
        this.p = (1 << this.c) > this.a;
    }

    public static int a(long j) {
        long j2 = ~j;
        long j3 = ScatterMapKt.BitmaskLsb;
        long j4 = 0;
        for (int i = 0; i < 8; i++) {
            j3 &= j2 >>> i;
            j4 += j3;
        }
        long j5 = 578721382704613384L & j4;
        long j6 = j5 | (j5 >>> 1);
        long j7 = j6 | (j6 >>> 2);
        long j8 = j4 >>> 8;
        long j9 = j4 + (j8 & j7);
        for (int i2 = 2; i2 < 8; i2++) {
            j7 &= j7 >>> 8;
            j8 >>>= 8;
            j9 += j8 & j7;
        }
        return ((int) j9) & 255;
    }

    public static long h(short s, short s2) {
        return -((((long) (s ^ s2)) - 1) >>> 63);
    }

    public static void i(long[] jArr, int i, int i2) {
        int i3 = i2 - i;
        if (i3 < 2) {
            return;
        }
        int i4 = 1;
        while (i4 < i3 - i4) {
            i4 += i4;
        }
        for (int i5 = i4; i5 > 0; i5 >>>= 1) {
            int i6 = 0;
            for (int i7 = 0; i7 < i3 - i5; i7++) {
                if ((i7 & i5) == 0) {
                    int i8 = i + i7;
                    int i9 = i8 + i5;
                    long j = jArr[i9];
                    long j2 = jArr[i8];
                    long j3 = (j ^ j2) & (-((j - j2) >>> 63));
                    jArr[i8] = j2 ^ j3;
                    jArr[i9] = jArr[i9] ^ j3;
                }
            }
            for (int i10 = i4; i10 > i5; i10 >>>= 1) {
                while (i6 < i3 - i10) {
                    if ((i6 & i5) == 0) {
                        int i11 = i + i6;
                        int i12 = i11 + i5;
                        long j4 = jArr[i12];
                        for (int i13 = i10; i13 > i5; i13 >>>= 1) {
                            int i14 = i11 + i13;
                            long j5 = jArr[i14];
                            long j6 = (-((j5 - j4) >>> 63)) & (j4 ^ j5);
                            j4 ^= j6;
                            jArr[i14] = j5 ^ j6;
                        }
                        jArr[i12] = j4;
                    }
                    i6++;
                }
            }
        }
    }

    public final short b(short[] sArr, short s) {
        int i = this.b;
        short sB = sArr[i];
        for (int i2 = i - 1; i2 >= 0; i2--) {
            sB = (short) (this.m.b(sB, s) ^ sArr[i2]);
        }
        return sB;
    }

    public byte[] c(byte[] bArr) {
        byte[] bArr2 = new byte[d()];
        int i = this.c;
        short[] sArr = new short[1 << i];
        long[] jArr = {0};
        int[] iArr = new int[1 << i];
        int i2 = (this.a / 8) + ((1 << i) * 4);
        byte[] bArr3 = new byte[i2];
        int i3 = ((i2 - 32) - this.d) - ((1 << i) * 4);
        yx8 yx8Var = new yx8(256);
        yx8Var.b((byte) 64);
        yx8Var.update(bArr, 0, 32);
        yx8Var.f(bArr3, 0, i2);
        for (int i4 = 0; i4 < (1 << this.c); i4++) {
            iArr[i4] = cmb.b(bArr3, (i4 * 4) + i3);
        }
        f(bArr2, bArr, iArr, sArr, jArr);
        return bArr2;
    }

    public int d() {
        if (!this.o) {
            return (this.f * this.g) / 8;
        }
        int i = this.f;
        return i * ((this.a / 8) - ((i - 1) / 8));
    }

    public final int e(byte[][] bArr, short[] sArr, long[] jArr) {
        byte[] bArr2;
        long jC;
        long[] jArr2 = new long[64];
        int i = 32;
        long[] jArr3 = new long[32];
        byte[] bArr3 = new byte[9];
        int i2 = this.f - 32;
        int i3 = i2 / 8;
        int i4 = i2 % 8;
        char c = 0;
        if (this.o) {
            for (int i5 = 0; i5 < 32; i5++) {
                for (int i6 = 0; i6 < 9; i6++) {
                    bArr3[i6] = bArr[i2 + i5][i3 + i6];
                }
                int i7 = 0;
                while (i7 < 8) {
                    int i8 = i7 + 1;
                    bArr3[i7] = (byte) (((bArr3[i7] & 255) >> i4) | (bArr3[i8] << (8 - i4)));
                    i7 = i8;
                }
                jArr2[i5] = cmb.c(bArr3, 0);
            }
        } else {
            for (int i9 = 0; i9 < 32; i9++) {
                jArr2[i9] = cmb.c(bArr[i2 + i9], i3);
            }
        }
        long j = 0;
        jArr[0] = 0;
        int i10 = 0;
        while (i10 < 32) {
            long j2 = jArr2[i10];
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < 32; i12++) {
                j2 |= jArr2[i12];
            }
            if (j2 == j) {
                return -1;
            }
            int iA = a(j2);
            long j3 = iA;
            jArr3[i10] = j3;
            jArr[c] = jArr[c] | (1 << ((int) j3));
            for (int i13 = i11; i13 < 32; i13++) {
                long j4 = jArr2[i10];
                jArr2[i10] = j4 ^ (jArr2[i13] & (((j4 >> iA) & 1) - 1));
            }
            int i14 = i11;
            while (i14 < 32) {
                long j5 = jArr2[i14];
                jArr2[i14] = j5 ^ (jArr2[i10] & (-((j5 >> iA) & 1)));
                i14++;
                iA = iA;
                c = 0;
            }
            i10 = i11;
            j = 0;
        }
        int i15 = 0;
        while (i15 < 32) {
            int i16 = i15 + 1;
            int i17 = i16;
            while (i17 < 64) {
                int i18 = i2 + i15;
                int i19 = i2 + i17;
                long jH = h((short) i17, (short) jArr3[i15]) & ((long) (sArr[i18] ^ sArr[i19]));
                sArr[i18] = (short) (((long) sArr[i18]) ^ jH);
                sArr[i19] = (short) (jH ^ ((long) sArr[i19]));
                i17++;
                bArr3 = bArr3;
            }
            i15 = i16;
        }
        byte[] bArr4 = bArr3;
        int i20 = 0;
        while (i20 < this.f) {
            if (this.o) {
                for (int i21 = 0; i21 < 9; i21++) {
                    bArr4[i21] = bArr[i20][i3 + i21];
                }
                int i22 = 0;
                while (i22 < 8) {
                    int i23 = i22 + 1;
                    bArr4[i22] = (byte) (((bArr4[i22] & 255) >> i4) | (bArr4[i23] << (8 - i4)));
                    i22 = i23;
                }
                bArr2 = bArr4;
                jC = cmb.c(bArr2, 0);
            } else {
                bArr2 = bArr4;
                jC = cmb.c(bArr[i20], i3);
            }
            int i24 = 0;
            while (i24 < i) {
                long j6 = jArr3[i24];
                long j7 = ((jC >> i24) ^ (jC >> ((int) j6))) & 1;
                jC = (j7 << i24) ^ ((j7 << ((int) j6)) ^ jC);
                i24++;
                i = 32;
            }
            if (this.o) {
                cmb.e(bArr2, 0, jC);
                byte[] bArr5 = bArr[i20];
                int i25 = i3 + 8;
                int i26 = 8 - i4;
                bArr5[i25] = (byte) ((((bArr5[i25] & 255) >>> i4) << i4) | ((bArr2[7] & 255) >>> i26));
                bArr5[i3] = (byte) (((bArr2[0] & 255) << i4) | (((bArr5[i3] & 255) << i26) >>> i26));
                for (int i27 = 7; i27 >= 1; i27--) {
                    bArr[i20][i3 + i27] = (byte) (((bArr2[i27] & 255) << i4) | ((bArr2[i27 - 1] & 255) >>> i26));
                }
            } else {
                cmb.e(bArr[i20], i3, jC);
            }
            i20++;
            bArr4 = bArr2;
            i = 32;
        }
        return 0;
    }

    public final int f(byte[] bArr, byte[] bArr2, int[] iArr, short[] sArr, long[] jArr) {
        int i;
        int i2;
        int i3 = this.b;
        short[] sArr2 = new short[i3 + 1];
        sArr2[i3] = 1;
        int i4 = 0;
        for (int i5 = 0; i5 < this.b; i5++) {
            sArr2[i5] = cmb.d(bArr2, (i5 * 2) + 40, this.j);
        }
        int i6 = 1 << this.c;
        long[] jArr2 = new long[i6];
        for (int i7 = 0; i7 < (1 << this.c); i7++) {
            long j = iArr[i7];
            jArr2[i7] = j;
            long j2 = j << 31;
            jArr2[i7] = j2;
            long j3 = j2 | ((long) i7);
            jArr2[i7] = j3;
            jArr2[i7] = j3 & Long.MAX_VALUE;
        }
        i(jArr2, 0, i6);
        for (int i8 = 1; i8 < (1 << this.c); i8++) {
            if ((jArr2[i8 - 1] >> 31) == (jArr2[i8] >> 31)) {
                return -1;
            }
        }
        short[] sArr3 = new short[this.a];
        for (int i9 = 0; i9 < (1 << this.c); i9++) {
            sArr[i9] = (short) (jArr2[i9] & ((long) this.j));
        }
        int i10 = 0;
        while (true) {
            i = this.a;
            if (i10 >= i) {
                break;
            }
            sArr3[i10] = cmb.a(sArr[i10], this.c);
            i10++;
        }
        short[] sArr4 = new short[i];
        g(sArr4, sArr2, sArr3);
        int i11 = 0;
        while (true) {
            i2 = this.a;
            if (i11 >= i2) {
                break;
            }
            sArr4[i11] = this.m.a(sArr4[i11]);
            i11++;
        }
        byte[][] bArr3 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.f, i2 / 8);
        for (int i12 = 0; i12 < this.f; i12++) {
            for (int i13 = 0; i13 < this.a / 8; i13++) {
                bArr3[i12][i13] = 0;
            }
        }
        int i14 = 0;
        while (i14 < this.b) {
            for (int i15 = 0; i15 < this.a; i15 += 8) {
                int i16 = 0;
                while (true) {
                    int i17 = this.c;
                    if (i16 < i17) {
                        bArr3[(i17 * i14) + i16][i15 / 8] = (byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) (((byte) ((sArr4[i15 + 7] >>> i16) & 1)) << 1)) | ((sArr4[i15 + 6] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 5] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 4] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 3] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 2] >>> i16) & 1))) << 1)) | ((sArr4[i15 + 1] >>> i16) & 1))) << 1)) | ((sArr4[i15] >>> i16) & 1));
                        i16++;
                    }
                }
            }
            for (int i18 = 0; i18 < this.a; i18++) {
                sArr4[i18] = this.m.b(sArr4[i18], sArr3[i18]);
            }
            i14++;
        }
        int i19 = 0;
        while (true) {
            int i20 = this.f;
            if (i19 < i20) {
                i14 = i19 >>> 3;
                int i21 = i19 & 7;
                if (this.q && i19 == i20 - 32) {
                    if (e(bArr3, sArr, jArr) != 0) {
                        return -1;
                    }
                }
                int i22 = i19 + 1;
                int i23 = i22;
                while (i23 < this.f) {
                    byte b = (byte) (-((byte) (((byte) (((byte) (bArr3[i19][i14] ^ bArr3[i23][i14])) >> i21)) & 1)));
                    for (int i24 = i4; i24 < this.a / 8; i24++) {
                        byte[] bArr4 = bArr3[i19];
                        bArr4[i24] = (byte) (bArr4[i24] ^ (bArr3[i23][i24] & b));
                    }
                    i23++;
                    i4 = 0;
                }
                if (((bArr3[i19][i14] >> i21) & 1) == 0) {
                    return -1;
                }
                for (int i25 = 0; i25 < this.f; i25++) {
                    if (i25 != i19) {
                        byte b2 = (byte) (-((byte) (((byte) (bArr3[i25][i14] >> i21)) & 1)));
                        for (int i26 = 0; i26 < this.a / 8; i26++) {
                            byte[] bArr5 = bArr3[i25];
                            bArr5[i26] = (byte) (bArr5[i26] ^ (bArr3[i19][i26] & b2));
                        }
                    }
                }
                i19 = i22;
                i4 = 0;
            } else {
                if (bArr == null) {
                    return 0;
                }
                if (this.o) {
                    int i27 = i20 % 8;
                    if (i27 == 0) {
                        System.arraycopy(bArr3[i14], (i20 - 1) / 8, bArr, 0, this.a / 8);
                        return 0;
                    }
                    int i28 = 0;
                    int i29 = 0;
                    while (true) {
                        int i30 = this.f;
                        if (i28 >= i30) {
                            return 0;
                        }
                        int i31 = (i30 - 1) / 8;
                        while (i31 < (this.a / 8) - 1) {
                            byte[] bArr6 = bArr3[i28];
                            int i32 = (bArr6[i31] & 255) >>> i27;
                            i31++;
                            bArr[i29] = (byte) ((bArr6[i31] << (8 - i27)) | i32);
                            i29++;
                        }
                        bArr[i29] = (byte) ((bArr3[i28][i31] & 255) >>> i27);
                        i28++;
                        i29++;
                    }
                } else {
                    int i33 = ((this.a - i20) + 7) / 8;
                    int i34 = 0;
                    while (true) {
                        int i35 = this.f;
                        if (i34 >= i35) {
                            return 0;
                        }
                        System.arraycopy(bArr3[i34], i35 / 8, bArr, i33 * i34, i33);
                        i34++;
                    }
                }
            }
        }
    }

    public final void g(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i = 0; i < this.a; i++) {
            sArr[i] = b(sArr2, sArr3[i]);
        }
    }
}
