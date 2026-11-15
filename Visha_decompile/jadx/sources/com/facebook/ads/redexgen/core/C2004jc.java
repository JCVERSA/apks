package com.facebook.ads.redexgen.core;

import androidx.media3.common.C;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.IOException;

public final class C2004jc implements GP {
    public static String[] A04 = {"sdKdmhexVnrlWGhX9TH5KtuHBxlX2", "B98Zkm438dg3YkwTFsWcwjYsIqopE2cW", "q7DFl2FydsE0DWNk8QJk98tFdBPGU17r", "uw89PlDwsU5CTp5ALy1o", "HmpI", "x0Unc4LQNUVImDERNKiE", "Klo4tVDdc3zNBBgsT3eAMryjwXw3w", "mmy2vPNb8zCZX"};
    public final int A00;
    public final int A01;
    public final C4J A02 = new C4J();
    public final C4R A03;

    public C2004jc(int i, C4R c4r, int i2) {
        this.A00 = i;
        this.A03 = c4r;
        this.A01 = i2;
    }

    private GN A00(C4J c4j, long j, long j2) {
        int iA00;
        int iA01;
        int iA0A = c4j.A0A();
        long j3 = -1;
        long j4 = -1;
        long lastPcrTimeUsInRange = C.TIME_UNSET;
        while (c4j.A07() >= 188 && (iA01 = (iA00 = AbstractC1029Kg.A00(c4j.A0l(), c4j.A09(), iA0A)) + 188) <= iA0A) {
            long jA01 = AbstractC1029Kg.A01(c4j, iA00, this.A00);
            if (jA01 != C.TIME_UNSET) {
                long jA06 = this.A03.A06(jA01);
                if (jA06 > j) {
                    String[] strArr = A04;
                    if (strArr[1].charAt(12) == strArr[2].charAt(12)) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A04;
                    strArr2[3] = "aExFpEIrb6zE8t35yvld";
                    strArr2[5] = "jMLoot3yN0lnttWSwPI3";
                    if (lastPcrTimeUsInRange == C.TIME_UNSET) {
                        return GN.A04(jA06, j2);
                    }
                    return GN.A03(j2 + j3);
                }
                long j5 = jA06 + SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US;
                String[] strArr3 = A04;
                if (strArr3[1].charAt(12) != strArr3[2].charAt(12)) {
                    String[] strArr4 = A04;
                    strArr4[3] = "ZHgwZuqrkfLn2FTfbKUV";
                    strArr4[5] = "99YI6qOyfmrUQVvNk1ZB";
                    if (j5 > j) {
                        return GN.A03(((long) iA00) + j2);
                    }
                    j3 = iA00;
                    lastPcrTimeUsInRange = jA06;
                } else {
                    A04[4] = "5ynNf";
                    if (j5 > j) {
                        return GN.A03(((long) iA00) + j2);
                    }
                    j3 = iA00;
                    lastPcrTimeUsInRange = jA06;
                }
            }
            c4j.A0f(iA01);
            j4 = iA01;
        }
        if (lastPcrTimeUsInRange != C.TIME_UNSET) {
            return GN.A05(lastPcrTimeUsInRange, j2 + j4);
        }
        return GN.A03;
    }

    @Override
    public final void AFA() {
        this.A02.A0i(AbstractC06244a.A07);
    }

    @Override
    public final GN AIC(InterfaceC2101lN interfaceC2101lN, long j) throws IOException {
        long jA8f = interfaceC2101lN.A8f();
        int iMin = (int) Math.min(this.A01, interfaceC2101lN.A8G() - jA8f);
        this.A02.A0d(iMin);
        interfaceC2101lN.AG9(this.A02.A0l(), 0, iMin);
        return A00(this.A02, j, jA8f);
    }
}
