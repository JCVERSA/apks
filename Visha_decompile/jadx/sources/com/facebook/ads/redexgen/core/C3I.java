package com.facebook.ads.redexgen.core;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;

public class C3I extends DG {
    public static String[] A01 = {"A0hxmHyocA20uKbzLNrX1cuoBFAzY21E", "I9xoCKjiIf8OmMJxcwGdtcNw1YuiDvi3", CmcdConfiguration.KEY_DEADLINE, "8cu3hn6v04Mabo0DRb3BoKxPmV6m17RH", "M3PfsQ0uQOYBe23ut3RBur7M821ZKE4o", "dBLXd4nh7JPFvxg4r1eMmoTDEY", "dzagYupPsp4H2uhompZ2DySoLx14PfZd", "Z1qzuvaE1jq9Ec95ZFgzh3McR3fZkyWy"};
    public final D9 A00;

    public C3I(D9 d9) {
        this.A00 = d9;
    }

    @Override
    public final void A03(DH dh) {
        if (this.A00.A01 != null && !this.A00.A05 && dh.A00().getAction() == 0) {
            D9 d9 = this.A00;
            String[] strArr = A01;
            if (strArr[5].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            A01[4] = "8qKCS4QoQxaUoDKBRazWJt0HJmuP0GoR";
            d9.A07.removeCallbacksAndMessages(null);
            if (this.A00.A0G(EnumC1676e1.A04)) {
                this.A00.A03();
                D9 d10 = this.A00;
                if (A01[3].charAt(1) != 'x') {
                    A01[3] = "krfS0sgwBFPIM38aK2Y5K2a50FO4BQxK";
                    d10.A06(true, false);
                } else {
                    d10.A06(true, false);
                }
            }
            if (this.A00.A04) {
                this.A00.A07.postDelayed(new DA(this), this.A00.A00);
            }
        }
    }
}
