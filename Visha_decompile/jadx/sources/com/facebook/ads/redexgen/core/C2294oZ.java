package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.ArrayList;

public final class C2294oZ implements C1S {
    public final C2B A00;
    public static String[] A01 = {"mula3CidaM", "QXZvrsMqvoQg77WBvlve", "clHaL9AVxqL", "4", "dTVzaj3Js", "vbPIPyw6rptXOUyrUErD6RaDDuBNyqsV", "dqUk2BmO1rRhKnsvPvl2vnYni3", "mE8b9jVFwC8HjBTnnlrMONG37KhdcP6J"};
    public static final C2294oZ A03 = new C05852n().A04();
    public static final String A04 = AbstractC06244a.A0h(0);
    public static final C1R<C2294oZ> A02 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C2294oZ.A01(bundle);
        }
    };

    public C2294oZ(C2B c2b) {
        this.A00 = c2b;
    }

    public static C2294oZ A01(Bundle bundle) {
        ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(A04);
        if (integerArrayList == null) {
            return A03;
        }
        C05852n c05852n = new C05852n();
        int i = 0;
        while (true) {
            int size = integerArrayList.size();
            if (A01[7].charAt(28) != 'c') {
                throw new RuntimeException();
            }
            A01[7] = "mp2TMNIiilctnlK0CRpdI2bFoWxScr6M";
            if (i < size) {
                c05852n.A00(integerArrayList.get(i).intValue());
                i++;
            } else {
                return c05852n.A04();
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C2294oZ)) {
                return false;
            }
            return this.A00.equals(((C2294oZ) obj).A00);
        }
        if (A01[5].charAt(22) == 'S') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[2] = "64Urjp6xISM";
        strArr[0] = "9byEEtKTR1";
        return true;
    }

    public final int hashCode() {
        return this.A00.hashCode();
    }
}
