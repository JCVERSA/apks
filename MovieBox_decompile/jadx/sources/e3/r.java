package e3;

import androidx.media3.common.util.j0;

public abstract class r {
    private static int a(int i10, j0 j0Var, int i11) {
        if (i10 == 12) {
            return 240;
        }
        if (i10 == 13) {
            return 120;
        }
        if (i10 == 21 && j0Var.a() >= 8 && j0Var.f() + 8 <= i11) {
            int iQ = j0Var.q();
            int iQ2 = j0Var.q();
            if (iQ >= 12 && iQ2 == 1936877170) {
                return j0Var.I();
            }
        }
        return -2147483647;
    }

    public static androidx.media3.common.x b(j0 j0Var, int i10) {
        j0Var.X(12);
        while (j0Var.f() < i10) {
            int iF = j0Var.f();
            int iQ = j0Var.q();
            if (j0Var.q() == 1935766900) {
                if (iQ < 16) {
                    return null;
                }
                j0Var.X(4);
                int i11 = -1;
                int i12 = 0;
                for (int i13 = 0; i13 < 2; i13++) {
                    int iH = j0Var.H();
                    int iH2 = j0Var.H();
                    if (iH == 0) {
                        i11 = iH2;
                    } else if (iH == 1) {
                        i12 = iH2;
                    }
                }
                int iA = a(i11, j0Var, i10);
                if (iA == -2147483647) {
                    return null;
                }
                return new androidx.media3.common.x(new z2.d(iA, i12));
            }
            j0Var.W(iF + iQ);
        }
        return null;
    }
}
