package com.airbnb.lottie;

public enum RenderMode {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    static class a {

        static final int[] f17085a;

        static {
            int[] iArr = new int[RenderMode.values().length];
            f17085a = iArr;
            try {
                iArr[RenderMode.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17085a[RenderMode.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17085a[RenderMode.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean useSoftwareRendering(int i10, boolean z10, int i11) {
        int i12 = a.f17085a[ordinal()];
        if (i12 == 1) {
            return false;
        }
        if (i12 != 2) {
            return (z10 && i10 < 28) || i11 > 4 || i10 <= 25;
        }
        return true;
    }
}
