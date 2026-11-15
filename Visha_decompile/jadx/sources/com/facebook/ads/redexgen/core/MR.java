package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.Map;
import javax.annotation.Nullable;

public abstract class MR {
    public static byte[] A04;
    public boolean A00;

    @Nullable
    public final MS A01;
    public final C1635dL A02;
    public final C1708eX A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 121);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-2, 34, 37, 39, 26, 40, 40, 30, 36, 35, -43, 33, 36, 28, 28, 26, 25};
    }

    public abstract void A08(Map<String, String> map);

    public MR(C1635dL c1635dL, MS ms, C1708eX c1708eX) {
        this.A02 = c1635dL;
        this.A01 = ms;
        this.A03 = c1708eX;
    }

    public final void A03() {
        if (this.A00) {
            return;
        }
        if (this.A01 != null) {
            this.A01.A00();
        }
        Map<String, String> extraData = new C1420Zp().A03(this.A03).A05();
        A08(extraData);
        this.A00 = true;
        WX.A04(this.A02, A00(0, 17, 60));
        MS ms = this.A01;
    }
}
