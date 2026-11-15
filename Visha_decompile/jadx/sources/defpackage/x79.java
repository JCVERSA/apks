package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.math.BigInteger;

public abstract class x79 {
    public static void a(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr2[1] ^ jArr[1];
    }

    public static void b(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr[1] ^ jArr2[1];
        jArr3[2] = jArr[2] ^ jArr2[2];
        jArr3[3] = jArr2[3] ^ jArr[3];
    }

    public static void c(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0] ^ 1;
        jArr2[1] = jArr[1];
    }

    public static void d(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr2[0] ^ jArr[0];
        jArr2[1] = jArr2[1] ^ jArr[1];
    }

    public static long[] e(BigInteger bigInteger) {
        return vy6.r(113, bigInteger);
    }

    public static void f(long[] jArr, long[] jArr2) {
        long[] jArrI = ly6.i();
        ly6.e(jArr, jArr2);
        for (int i = 1; i < 113; i += 2) {
            i(jArr2, jArrI);
            m(jArrI, jArr2);
            i(jArr2, jArrI);
            m(jArrI, jArr2);
            d(jArr, jArr2);
        }
    }

    public static void g(long[] jArr, long[] jArr2, long[] jArr3) {
        long j = jArr[0];
        long j2 = ((jArr[1] << 7) ^ (j >>> 57)) & 144115188075855871L;
        long j3 = j & 144115188075855871L;
        long j4 = jArr2[0];
        long j5 = ((jArr2[1] << 7) ^ (j4 >>> 57)) & 144115188075855871L;
        long j6 = j4 & 144115188075855871L;
        long[] jArr4 = new long[6];
        h(jArr3, j3, j6, jArr4, 0);
        h(jArr3, j2, j5, jArr4, 2);
        h(jArr3, j3 ^ j2, j6 ^ j5, jArr4, 4);
        long j7 = jArr4[1] ^ jArr4[2];
        long j8 = jArr4[0];
        long j9 = jArr4[3];
        long j10 = (jArr4[4] ^ j8) ^ j7;
        long j11 = j7 ^ (jArr4[5] ^ j9);
        jArr3[0] = j8 ^ (j10 << 57);
        jArr3[1] = (j10 >>> 7) ^ (j11 << 50);
        jArr3[2] = (j11 >>> 14) ^ (j9 << 43);
        jArr3[3] = j9 >>> 21;
    }

    public static void h(long[] jArr, long j, long j2, long[] jArr2, int i) {
        jArr[1] = j2;
        long j3 = j2 << 1;
        jArr[2] = j3;
        long j4 = j3 ^ j2;
        jArr[3] = j4;
        long j5 = j2 << 2;
        jArr[4] = j5;
        jArr[5] = j5 ^ j2;
        long j6 = j4 << 1;
        jArr[6] = j6;
        jArr[7] = j6 ^ j2;
        long j7 = jArr[((int) j) & 7];
        long j8 = 0;
        int i2 = 48;
        do {
            int i3 = (int) (j >>> i2);
            long j9 = (jArr[i3 & 7] ^ (jArr[(i3 >>> 3) & 7] << 3)) ^ (jArr[(i3 >>> 6) & 7] << 6);
            j7 ^= j9 << i2;
            j8 ^= j9 >>> (-i2);
            i2 -= 9;
        } while (i2 > 0);
        jArr2[i] = 144115188075855871L & j7;
        jArr2[i + 1] = (((((j & 72198606942111744L) & ((j2 << 7) >> 63)) >>> 8) ^ j8) << 7) ^ (j7 >>> 57);
    }

    public static void i(long[] jArr, long[] jArr2) {
        i45.d(jArr, 0, 2, jArr2, 0);
    }

    public static void j(long[] jArr, long[] jArr2) {
        if (ly6.r(jArr)) {
            throw new IllegalStateException();
        }
        long[] jArrG = ly6.g();
        long[] jArrG2 = ly6.g();
        o(jArr, jArrG);
        k(jArrG, jArr, jArrG);
        o(jArrG, jArrG);
        k(jArrG, jArr, jArrG);
        q(jArrG, 3, jArrG2);
        k(jArrG2, jArrG, jArrG2);
        o(jArrG2, jArrG2);
        k(jArrG2, jArr, jArrG2);
        q(jArrG2, 7, jArrG);
        k(jArrG, jArrG2, jArrG);
        q(jArrG, 14, jArrG2);
        k(jArrG2, jArrG, jArrG2);
        q(jArrG2, 28, jArrG);
        k(jArrG, jArrG2, jArrG);
        q(jArrG, 56, jArrG2);
        k(jArrG2, jArrG, jArrG2);
        o(jArrG2, jArr2);
    }

    public static void k(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[8];
        g(jArr, jArr2, jArr4);
        m(jArr4, jArr3);
    }

    public static void l(long[] jArr, long[] jArr2, long[] jArr3) {
        long[] jArr4 = new long[8];
        g(jArr, jArr2, jArr4);
        b(jArr3, jArr4, jArr3);
    }

    public static void m(long[] jArr, long[] jArr2) {
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = j3 ^ ((j4 >>> 40) ^ (j4 >>> 49));
        long j6 = j ^ ((j5 << 15) ^ (j5 << 24));
        long j7 = (j2 ^ ((j4 << 15) ^ (j4 << 24))) ^ ((j5 >>> 40) ^ (j5 >>> 49));
        long j8 = j7 >>> 49;
        jArr2[0] = (j6 ^ j8) ^ (j8 << 9);
        jArr2[1] = 562949953421311L & j7;
    }

    public static void n(long[] jArr, long[] jArr2) {
        long jG = i45.g(jArr[0]);
        long jG2 = i45.g(jArr[1]);
        long j = (MuxerUtil.UNSIGNED_INT_MAX_VALUE & jG) | (jG2 << 32);
        long j2 = (jG >>> 32) | (jG2 & (-4294967296L));
        jArr2[0] = ((j2 << 57) ^ j) ^ (j2 << 5);
        jArr2[1] = (j2 >>> 59) ^ (j2 >>> 7);
    }

    public static void o(long[] jArr, long[] jArr2) {
        long[] jArrI = ly6.i();
        i(jArr, jArrI);
        m(jArrI, jArr2);
    }

    public static void p(long[] jArr, long[] jArr2) {
        long[] jArrI = ly6.i();
        i(jArr, jArrI);
        b(jArr2, jArrI, jArr2);
    }

    public static void q(long[] jArr, int i, long[] jArr2) {
        long[] jArrI = ly6.i();
        i(jArr, jArrI);
        while (true) {
            m(jArrI, jArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                i(jArr2, jArrI);
            }
        }
    }

    public static int r(long[] jArr) {
        return ((int) jArr[0]) & 1;
    }
}
