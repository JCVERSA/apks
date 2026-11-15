package com.facebook.ads.redexgen.core;

public class C0850Di extends AbstractC1258Tf<C06013d> {
    public static String[] A01 = {"Xm4oO1fgaoMOjj45N8r00LATVp4gHrYG", "MO5WiyOQHdAIBAUWSCIdsXDipyRYP8jB", "8ZD7midsUGLLHTawsvmUwyHXKE63ocNK", "eXsxAyUW", "", "KTVY2IhXiCn688zdyYvQYy9fTV", "AuZpLEz4ubgydEKdqdaVeIvdhtRZUWrW", "O3ESmZOEeO27LGblO6LyKeoijHa02l1o"};
    public final C06063i A00;

    public C0850Di(C06063i c06063i) {
        this.A00 = c06063i;
    }

    @Override
    public final void A03(C06013d c06013d) {
        int iA00 = c06013d.A00();
        int duration = c06013d.A01();
        int currentPosition = this.A00.A00;
        if (currentPosition > 0 && iA00 == duration) {
            int currentPosition2 = this.A00.A00;
            if (duration > currentPosition2) {
                return;
            }
        }
        int currentPosition3 = iA00 + 500;
        if (duration < currentPosition3) {
            if (duration == 0) {
                C06063i c06063i = this.A00;
                int currentPosition4 = this.A00.A00;
                c06063i.A0j(currentPosition4);
                return;
            }
            this.A00.A0j(duration);
            return;
        }
        C06063i c06063i2 = this.A00;
        String[] strArr = A01;
        String str = strArr[7];
        String str2 = strArr[0];
        int duration2 = str.charAt(6);
        int currentPosition5 = str2.charAt(6);
        if (duration2 == currentPosition5) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[5] = "eYEuq0G9XeIp1YNIhTPdTiyuyz";
        strArr2[3] = "ZD2QUH1g";
        c06063i2.A0j(iA00);
    }

    @Override
    public final Class<C06013d> A01() {
        return C06013d.class;
    }
}
