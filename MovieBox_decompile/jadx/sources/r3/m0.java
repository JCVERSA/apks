package r3;

import com.mbridge.msdk.playercommon.exoplayer2.C;

public abstract class m0 {
    public static int a(byte[] bArr, int i10, int i11) {
        while (i10 < i11 && bArr[i10] != 71) {
            i10++;
        }
        return i10;
    }

    public static boolean b(byte[] bArr, int i10, int i11, int i12) {
        int i13 = 0;
        for (int i14 = -4; i14 <= 4; i14++) {
            int i15 = (i14 * 188) + i12;
            if (i15 < i10 || i15 >= i11 || bArr[i15] != 71) {
                i13 = 0;
            } else {
                i13++;
                if (i13 == 5) {
                    return true;
                }
            }
        }
        return false;
    }

    public static long c(androidx.media3.common.util.j0 j0Var, int i10, int i11) {
        j0Var.W(i10);
        if (j0Var.a() < 5) {
            return C.TIME_UNSET;
        }
        int iQ = j0Var.q();
        if ((8388608 & iQ) != 0 || ((2096896 & iQ) >> 8) != i11 || (iQ & 32) == 0 || j0Var.H() < 7 || j0Var.a() < 7 || (j0Var.H() & 16) != 16) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[6];
        j0Var.l(bArr, 0, 6);
        return d(bArr);
    }

    private static long d(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((255 & ((long) bArr[4])) >> 7);
    }
}
