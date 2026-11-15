package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;

public final class C1922iE extends MR {
    public static byte[] A06;
    public static final String A07;
    public C1924iG A00;
    public V4 A01;
    public boolean A02;
    public final C1635dL A03;
    public final US A04;
    public final AbstractC1409Ze A05;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A06 = new byte[]{-55, -56, -43, -43, -52, -39};
    }

    static {
        A05();
        A07 = C1922iE.class.getSimpleName();
    }

    public C1922iE(C1635dL c1635dL, US us, AbstractC1409Ze abstractC1409Ze, C1708eX c1708eX, MS ms, V4 v4) {
        super(c1635dL, ms, c1708eX);
        this.A04 = us;
        this.A05 = abstractC1409Ze;
        this.A03 = c1635dL;
        this.A01 = v4;
    }

    @Override
    public final void A08(Map<String, String> map) {
        String string;
        if (this.A00 != null && !TextUtils.isEmpty(this.A00.A7G())) {
            this.A03.A0F().A3D();
            AbstractC1122Nw.A02(this.A00.A05(), X0.A00(A04(0, 6, 50)));
            this.A04.AB5(this.A00.A7G(), map);
            if (U7.A19(this.A03)) {
                if (this.A01 == V4.A09) {
                    string = AdPlacementType.MEDIUM_RECTANGLE.toString();
                } else {
                    string = AdPlacementType.BANNER.toString();
                }
                W2 w2A00 = W2.A00(this.A03);
                String placementType = this.A00.A7G();
                w2A00.A0E(string, placementType);
            }
        }
    }

    public final synchronized void A09() {
        if (!this.A02 && this.A00 != null) {
            this.A02 = true;
            if (!TextUtils.isEmpty(this.A00.A03())) {
                XJ.A00(new C1923iF(this));
            }
        }
    }

    public final void A0A(C1924iG c1924iG) {
        this.A00 = c1924iG;
    }
}
