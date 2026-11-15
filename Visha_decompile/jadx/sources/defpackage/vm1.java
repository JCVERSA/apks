package defpackage;

import androidx.media3.muxer.MuxerUtil;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.math.BigInteger;
import java.security.SecureRandom;

public abstract class vm1 {
    public static final int[] a = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    public static final int[] b = {TranSceneConfig.SCENE_TYPE_GAME_HOK_DOMINATE, 0, 0, 0, 0, 0, 0, 0, -19, -1, -1, -1, -1, -1, -1, 1073741823};

    public static void a(int[] iArr, int[] iArr2, int[] iArr3) {
        py6.a(iArr, iArr2, iArr3);
        if (py6.s(iArr3, a)) {
            q(iArr3);
        }
    }

    public static void b(int[] iArr, int[] iArr2) {
        vy6.w(8, iArr, iArr2);
        if (py6.s(iArr2, a)) {
            q(iArr2);
        }
    }

    public static int c(int[] iArr) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - 19;
        iArr[0] = (int) j;
        long jO = j >> 32;
        if (jO != 0) {
            jO = vy6.o(7, iArr, 1);
        }
        long j2 = jO + (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[7])) + 2147483648L;
        iArr[7] = (int) j2;
        return (int) (j2 >> 32);
    }

    public static int[] d(BigInteger bigInteger) {
        int[] iArrP = py6.p(bigInteger);
        while (true) {
            int[] iArr = a;
            if (!py6.s(iArrP, iArr)) {
                return iArrP;
            }
            py6.I(iArr, iArrP);
        }
    }

    public static void e(int[] iArr, int[] iArr2) {
        cq6.b(a, iArr, iArr2);
    }

    public static int f(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            i |= iArr[i2];
        }
        return (((i >>> 1) | (i & 1)) - 1) >> 31;
    }

    public static void g(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArrK = py6.k();
        py6.y(iArr, iArr2, iArrK);
        l(iArrK, iArr3);
    }

    public static void h(int[] iArr, int[] iArr2, int[] iArr3) {
        py6.C(iArr, iArr2, iArr3);
        if (vy6.u(16, iArr3, b)) {
            p(iArr3);
        }
    }

    public static void i(int[] iArr, int[] iArr2) {
        if (f(iArr) == 0) {
            py6.H(a, iArr, iArr2);
        } else {
            int[] iArr3 = a;
            py6.H(iArr3, iArr3, iArr2);
        }
    }

    public static void j(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            cv7.f(bArr, 0, iArr, 0, 8);
            iArr[7] = iArr[7] & Integer.MAX_VALUE;
        } while (vy6.B(8, iArr, a) == 0);
    }

    public static void k(SecureRandom secureRandom, int[] iArr) {
        do {
            j(secureRandom, iArr);
        } while (f(iArr) != 0);
    }

    public static void l(int[] iArr, int[] iArr2) {
        int i = iArr[7];
        vy6.I(8, iArr, 8, i, iArr2, 0);
        int iD = py6.D(19, iArr, iArr2) << 1;
        int i2 = iArr2[7];
        iArr2[7] = (i2 & Integer.MAX_VALUE) + vy6.g(7, (iD + ((i2 >>> 31) - (i >>> 31))) * 19, iArr2);
        if (py6.s(iArr2, a)) {
            q(iArr2);
        }
    }

    public static void m(int i, int[] iArr) {
        int i2 = iArr[7];
        iArr[7] = (i2 & Integer.MAX_VALUE) + vy6.g(7, ((i << 1) | (i2 >>> 31)) * 19, iArr);
        if (py6.s(iArr, a)) {
            q(iArr);
        }
    }

    public static void n(int[] iArr, int[] iArr2) {
        int[] iArrK = py6.k();
        py6.F(iArr, iArrK);
        l(iArrK, iArr2);
    }

    public static void o(int[] iArr, int i, int[] iArr2) {
        int[] iArrK = py6.k();
        py6.F(iArr, iArrK);
        while (true) {
            l(iArrK, iArr2);
            i--;
            if (i <= 0) {
                return;
            } else {
                py6.F(iArr2, iArrK);
            }
        }
    }

    public static int p(int[] iArr) {
        long j = ((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        int[] iArr2 = b;
        long j2 = j - (((long) iArr2[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        iArr[0] = (int) j2;
        long jO = j2 >> 32;
        if (jO != 0) {
            jO = vy6.o(8, iArr, 1);
        }
        long j3 = jO + (((long) iArr[8]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + 19;
        iArr[8] = (int) j3;
        long jX = j3 >> 32;
        if (jX != 0) {
            jX = vy6.x(15, iArr, 9);
        }
        long j4 = jX + ((((long) iArr[15]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) - (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) (iArr2[15] + 1))));
        iArr[15] = (int) j4;
        return (int) (j4 >> 32);
    }

    public static int q(int[] iArr) {
        long j = (((long) iArr[0]) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) + 19;
        iArr[0] = (int) j;
        long jX = j >> 32;
        if (jX != 0) {
            jX = vy6.x(7, iArr, 1);
        }
        long j2 = jX + ((MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) iArr[7])) - 2147483648L);
        iArr[7] = (int) j2;
        return (int) (j2 >> 32);
    }

    public static void r(int[] iArr, int[] iArr2, int[] iArr3) {
        if (py6.H(iArr, iArr2, iArr3) != 0) {
            c(iArr3);
        }
    }

    public static void s(int[] iArr, int[] iArr2) {
        vy6.J(8, iArr, 0, iArr2);
        if (py6.s(iArr2, a)) {
            q(iArr2);
        }
    }
}
