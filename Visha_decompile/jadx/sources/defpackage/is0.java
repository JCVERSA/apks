package defpackage;

import androidx.media3.common.C;

public abstract class is0 {
    public static void a(long j, qw7 qw7Var, fva[] fvaVarArr) {
        while (true) {
            if (qw7Var.a() <= 1) {
                return;
            }
            int iC = c(qw7Var);
            int iC2 = c(qw7Var);
            int iE = qw7Var.e() + iC2;
            if (iC2 == -1 || iC2 > qw7Var.a()) {
                op5.i("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                iE = qw7Var.f();
            } else if (iC == 4 && iC2 >= 8) {
                int iC3 = qw7Var.C();
                int I = qw7Var.I();
                int iN = I == 49 ? qw7Var.n() : 0;
                int iC4 = qw7Var.C();
                if (I == 47) {
                    qw7Var.P(1);
                }
                boolean z = iC3 == 181 && (I == 49 || I == 47) && iC4 == 3;
                if (I == 49) {
                    z &= iN == 1195456820;
                }
                if (z) {
                    b(j, qw7Var, fvaVarArr);
                }
            }
            qw7Var.O(iE);
        }
    }

    public static void b(long j, qw7 qw7Var, fva[] fvaVarArr) {
        int iC = qw7Var.C();
        if ((iC & 64) != 0) {
            qw7Var.P(1);
            int i = (iC & 31) * 3;
            int iE = qw7Var.e();
            for (fva fvaVar : fvaVarArr) {
                qw7Var.O(iE);
                fvaVar.d(qw7Var, i);
                if (j != C.TIME_UNSET) {
                    fvaVar.e(j, 1, i, 0, null);
                }
            }
        }
    }

    public static int c(qw7 qw7Var) {
        int i = 0;
        while (qw7Var.a() != 0) {
            int iC = qw7Var.C();
            i += iC;
            if (iC != 255) {
                return i;
            }
        }
        return -1;
    }
}
