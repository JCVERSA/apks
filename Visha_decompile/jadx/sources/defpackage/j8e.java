package defpackage;

import androidx.media3.common.C;

public abstract class j8e {
    public static void a(long j, u4h u4hVar, rae[] raeVarArr) {
        int iA;
        while (true) {
            if (u4hVar.u() <= 1) {
                return;
            }
            int iC = c(u4hVar);
            int iC2 = c(u4hVar);
            int iW = u4hVar.w() + iC2;
            if (iC2 == -1 || iC2 > u4hVar.u()) {
                zrg.f("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                iW = u4hVar.x();
            } else if (iC == 4 && iC2 >= 8) {
                int iG = u4hVar.G();
                int iK = u4hVar.K();
                if (iK == 49) {
                    iA = u4hVar.A();
                    iK = 49;
                } else {
                    iA = 0;
                }
                int iG2 = u4hVar.G();
                if (iK == 47) {
                    u4hVar.m(1);
                    iK = 47;
                }
                boolean z = iG == 181 && (iK == 49 || iK == 47) && iG2 == 3;
                if (iK == 49) {
                    z &= iA == 1195456820;
                }
                if (z) {
                    b(j, u4hVar, raeVarArr);
                }
            }
            u4hVar.l(iW);
        }
    }

    public static void b(long j, u4h u4hVar, rae[] raeVarArr) {
        int iG = u4hVar.G();
        if ((iG & 64) != 0) {
            int i = iG & 31;
            u4hVar.m(1);
            int iW = u4hVar.w();
            for (rae raeVar : raeVarArr) {
                int i2 = i * 3;
                u4hVar.l(iW);
                raeVar.d(u4hVar, i2);
                n7g.f(j != C.TIME_UNSET);
                raeVar.g(j, 1, i2, 0, null);
            }
        }
    }

    public static int c(u4h u4hVar) {
        int i = 0;
        while (u4hVar.u() != 0) {
            int iG = u4hVar.G();
            i += iG;
            if (iG != 255) {
                return i;
            }
        }
        return -1;
    }
}
