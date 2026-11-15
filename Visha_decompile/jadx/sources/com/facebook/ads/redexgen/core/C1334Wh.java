package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;

public final class C1334Wh {
    public static String[] A05 = {"hdh4k6eZclrlxxYg19ck", "OIQuDIQFpzBifrZrtJIvg4BasUaQd63c", "6y0NffGMqcG8EugdtirNjkqg6svCH2Zl", "13Ua2r6CYJwc6p6BI5coDxRAaPqMz7yS", "7WkbYpbXunBRly3lB1oHckvOip2eqLp6", "2PYz6J8qU0vRqLO17bgOak7iCaiihwk", "gvpJ77qQnx", "SLFhDDNvl2CxgKHJ1vqMDyCxDe74woQD"};
    public boolean A00 = false;
    public final Handler A01 = new Handler(Looper.getMainLooper());
    public final AbstractC1910hy A02;
    public final C1635dL A03;
    public final Wf A04;

    public C1334Wh(C1635dL c1635dL, AbstractC1910hy abstractC1910hy, Wf wf) {
        this.A03 = c1635dL;
        this.A04 = wf;
        this.A02 = abstractC1910hy;
    }

    public static C1334Wh A00(C1635dL c1635dL, AbstractC1910hy abstractC1910hy, Wf wf) {
        Object creativeAsCtaLoggingHelper = c1635dL.A0I();
        if (creativeAsCtaLoggingHelper == null) {
            creativeAsCtaLoggingHelper = new C1334Wh(c1635dL, abstractC1910hy, wf);
            c1635dL.A0P(creativeAsCtaLoggingHelper);
        }
        return (C1334Wh) creativeAsCtaLoggingHelper;
    }

    public static boolean A01(C1635dL c1635dL) {
        return U7.A1b(c1635dL) && WN.A0I(c1635dL);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0051  */
    public final C1333Wg A02(AbstractC1910hy abstractC1910hy) {
        boolean z;
        if (U7.A1h(this.A03)) {
            z = abstractC1910hy.A1W() && A01(this.A03);
            return new C1333Wg(z, z);
        }
        boolean zA1W = abstractC1910hy.A1W();
        if (zA1W) {
            boolean zA01 = A01(this.A03);
            String[] strArr = A05;
            if (strArr[5].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[2] = "D5RQoHah0ZffyX7n6MMHscTeZuBHZQ8g";
            strArr2[4] = "oKN8Sif1fTCm3hFJqGEcKAR8lt3N8fjA";
            z = zA01;
        }
        return new C1333Wg(zA1W, z);
    }

    public final void A03() {
        this.A00 = false;
        this.A01.removeCallbacksAndMessages(null);
    }
}
