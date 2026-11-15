package com.bytedance.adsdk.sP;

public enum RiZ {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    static class AnonymousClass1 {
        static final int[] Sj;

        static {
            int[] iArr = new int[RiZ.values().length];
            Sj = iArr;
            try {
                iArr[RiZ.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[RiZ.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Sj[RiZ.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean Sj(int i10, boolean z10, int i11) {
        int i12 = AnonymousClass1.Sj[ordinal()];
        if (i12 == 1) {
            return false;
        }
        if (i12 != 2) {
            return (z10 && i10 < 28) || i11 > 4 || i10 <= 25;
        }
        return true;
    }
}
