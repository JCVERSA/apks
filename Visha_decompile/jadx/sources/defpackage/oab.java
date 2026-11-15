package defpackage;

import androidx.media3.common.C;

public abstract class oab {
    public static int a(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static boolean b(byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        for (int i5 = -4; i5 <= 4; i5++) {
            int i6 = (i5 * 188) + i3;
            if (i6 < i || i6 >= i2 || bArr[i6] != 71) {
                i4 = 0;
            } else {
                i4++;
                if (i4 == 5) {
                    return true;
                }
            }
        }
        return false;
    }

    public static long c(qw7 qw7Var, int i, int i2) {
        qw7Var.O(i);
        if (qw7Var.a() < 5) {
            return C.TIME_UNSET;
        }
        int iN = qw7Var.n();
        if ((8388608 & iN) != 0 || ((2096896 & iN) >> 8) != i2 || (iN & 32) == 0 || qw7Var.C() < 7 || qw7Var.a() < 7 || (qw7Var.C() & 16) != 16) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[6];
        qw7Var.j(bArr, 0, 6);
        return d(bArr);
    }

    public static long d(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((255 & ((long) bArr[4])) >> 7);
    }
}
