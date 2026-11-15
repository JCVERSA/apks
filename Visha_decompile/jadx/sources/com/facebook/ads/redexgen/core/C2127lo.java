package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import java.util.Arrays;

public final class C2127lo implements C1S {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int[] A03;
    public static String[] A04 = {"0EeRaofkOnG82pPuB", "jcjJv", "T4n", "y6LXg9kPowsRJwalOEx6K", "cypgHvauDeb", "sGCac32Lryl6ta5A9qPel0ZSNDpSTc", "mAWrtqCYM7sM8yItQ0fM", "xdW2EE8FfL1ekapcbmlM6yOkR5Ux1S1"};
    public static final String A06 = AbstractC06244a.A0h(0);
    public static final String A07 = AbstractC06244a.A0h(1);
    public static final String A08 = AbstractC06244a.A0h(2);
    public static final C1R<C2127lo> A05 = new C1R() {
        @Override
        public final C1S A6X(Bundle bundle) {
            return C2127lo.A00(bundle);
        }
    };

    public C2127lo(int i, int[] iArr, int i2) {
        this.A00 = i;
        this.A03 = Arrays.copyOf(iArr, iArr.length);
        this.A01 = iArr.length;
        this.A02 = i2;
        Arrays.sort(this.A03);
    }

    public static C2127lo A00(Bundle bundle) {
        int i = bundle.getInt(A06, -1);
        int[] tracks = bundle.getIntArray(A07);
        int trackType = bundle.getInt(A08, -1);
        C3M.A07(i >= 0 && trackType >= 0);
        C3M.A01(tracks);
        return new C2127lo(i, tracks, trackType);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        String[] strArr = A04;
        if (strArr[5].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        A04[6] = "RoyHwRFBbL3TyB1YuYs";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2127lo c2127lo = (C2127lo) obj;
        if (this.A00 == c2127lo.A00 && Arrays.equals(this.A03, c2127lo.A03) && this.A02 == c2127lo.A02) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((this.A00 * 31) + Arrays.hashCode(this.A03)) * 31;
        int hash = this.A02;
        return iHashCode + hash;
    }
}
