package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Map;

public class C0963Hs extends AbstractC1707eW {
    public static byte[] A01;
    public final AbstractC0962Hr A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 78);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-37, -32, -39, -31, -26, -35, -36, -41, -39, -36, -41, -31, -26, -36, -35, -16};
    }

    public C0963Hs(AbstractC0962Hr abstractC0962Hr) {
        this.A00 = abstractC0962Hr;
    }

    @Override
    public final void A03() {
        if (!this.A00.A0A.A07()) {
            this.A00.A0A.A05();
            if (!TextUtils.isEmpty(this.A00.A06.A25())) {
                Map<String, String> mapA05 = new C1420Zp().A03(this.A00.A0D).A02(this.A00.A0A).A04(this.A00.A06.A0u()).A05();
                mapA05.put(A00(0, 16, 42), A00(0, 0, 96) + this.A00.A02);
                this.A00.A08.AB5(this.A00.A06.A25(), mapA05);
                W2.A00(this.A00.A07).A0E(this.A00.A0C.A8d(), this.A00.A06.A25());
                N3.A07(this.A00.A06.A21(), this.A00.A07);
                this.A00.A07.A0F().A3D();
                if (!this.A00.A04) {
                    AbstractC1122Nw.A02(this.A00.A06.A0t(), X0.A00(this.A00.A06.A0v()));
                }
                if (!this.A00.A05) {
                    this.A00.A0B.A4b(this.A00.A0C.A88());
                }
            }
        }
    }
}
