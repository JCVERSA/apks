package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

public class C1933iP implements S7 {
    public static byte[] A04;
    public final MX A00;
    public final C7K A01;
    public final C6M A02;
    public final Y9 A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-109, -82, -74, -71, -78, -79, 109, -63, -68, 109, -79, -68, -60, -69, -71, -68, -82, -79, 109, -82, 109, -70, -78, -79, -74, -82, 123};
    }

    public C1933iP(C7K c7k, Y9 y9, MX mx, C6M c6m) {
        this.A01 = c7k;
        this.A03 = y9;
        this.A00 = mx;
        this.A02 = c6m;
    }

    @Override
    public final void ACh() {
        AdErrorType adErrorType = AdErrorType.CACHE_FAILURE_ERROR;
        String strA00 = A00(0, 27, 69);
        this.A02.A0F().A3F(XG.A01(this.A01.A00), adErrorType.getErrorCode(), strA00);
        this.A00.ADj(this.A01, V1.A01(adErrorType, strA00));
    }

    @Override
    public final void ACq() {
        this.A03.A0J();
        this.A00.ACc(this.A01, this.A03);
        this.A02.A0F().A4G(this.A01.A01 != null);
    }
}
