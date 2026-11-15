package i9;

import com.mbridge.msdk.playercommon.exoplayer2.C;

public abstract class c {
    public static void a(long j10, com.google.android.exoplayer2.util.d0 d0Var, e0[] e0VarArr) {
        while (true) {
            if (d0Var.a() <= 1) {
                return;
            }
            int iC = c(d0Var);
            int iC2 = c(d0Var);
            int iE = d0Var.e() + iC2;
            if (iC2 == -1 || iC2 > d0Var.a()) {
                com.google.android.exoplayer2.util.s.i("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                iE = d0Var.f();
            } else if (iC == 4 && iC2 >= 8) {
                int iD = d0Var.D();
                int iJ = d0Var.J();
                int iN = iJ == 49 ? d0Var.n() : 0;
                int iD2 = d0Var.D();
                if (iJ == 47) {
                    d0Var.Q(1);
                }
                boolean z10 = iD == 181 && (iJ == 49 || iJ == 47) && iD2 == 3;
                if (iJ == 49) {
                    z10 &= iN == 1195456820;
                }
                if (z10) {
                    b(j10, d0Var, e0VarArr);
                }
            }
            d0Var.P(iE);
        }
    }

    public static void b(long j10, com.google.android.exoplayer2.util.d0 d0Var, e0[] e0VarArr) {
        int iD = d0Var.D();
        if ((iD & 64) != 0) {
            d0Var.Q(1);
            int i10 = (iD & 31) * 3;
            int iE = d0Var.e();
            for (e0 e0Var : e0VarArr) {
                d0Var.P(iE);
                e0Var.c(d0Var, i10);
                if (j10 != C.TIME_UNSET) {
                    e0Var.e(j10, 1, i10, 0, null);
                }
            }
        }
    }

    private static int c(com.google.android.exoplayer2.util.d0 d0Var) {
        int i10 = 0;
        while (d0Var.a() != 0) {
            int iD = d0Var.D();
            i10 += iD;
            if (iD != 255) {
                return i10;
            }
        }
        return -1;
    }
}
