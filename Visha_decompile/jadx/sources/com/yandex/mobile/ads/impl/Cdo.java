package com.yandex.mobile.ads.impl;

import androidx.media3.common.C;

public final class Cdo {
    public static void a(long j, ag1 ag1Var, a62[] a62VarArr) {
        int i;
        int iT;
        while (true) {
            if (ag1Var.a() <= 1) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (ag1Var.a() == 0) {
                    i = -1;
                    break;
                }
                int iT2 = ag1Var.t();
                i2 += iT2;
                if (iT2 != 255) {
                    i = i2;
                    break;
                }
            }
            int i3 = 0;
            do {
                if (ag1Var.a() == 0) {
                    i3 = -1;
                    break;
                } else {
                    iT = ag1Var.t();
                    i3 += iT;
                }
            } while (iT == 255);
            int iD = ag1Var.d() + i3;
            if (i3 == -1 || i3 > ag1Var.a()) {
                et0.d("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                iD = ag1Var.e();
            } else if (i == 4 && i3 >= 8) {
                int iT3 = ag1Var.t();
                int iZ = ag1Var.z();
                int iH = iZ == 49 ? ag1Var.h() : 0;
                int iT4 = ag1Var.t();
                if (iZ == 47) {
                    ag1Var.f(1);
                }
                boolean z = iT3 == 181 && (iZ == 49 || iZ == 47) && iT4 == 3;
                if (iZ == 49) {
                    z &= iH == 1195456820;
                }
                if (z) {
                    b(j, ag1Var, a62VarArr);
                }
            }
            ag1Var.e(iD);
        }
    }

    public static void b(long j, ag1 ag1Var, a62[] a62VarArr) {
        int iT = ag1Var.t();
        if ((iT & 64) != 0) {
            ag1Var.f(1);
            int i = (iT & 31) * 3;
            int iD = ag1Var.d();
            for (a62 a62Var : a62VarArr) {
                ag1Var.e(iD);
                a62Var.a(i, ag1Var);
                if (j != C.TIME_UNSET) {
                    a62Var.a(j, 1, i, 0, null);
                }
            }
        }
    }
}
