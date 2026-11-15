package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Map;

public final class C1952ik extends MH {
    public static byte[] A02;
    public static final String A03;
    public final Uri A00;
    public final Map<String, String> A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{52, 54, 45, 51, 54, 45, 56, 61, -32, -27, -36, -47};
    }

    static {
        A01();
        A03 = C1952ik.class.getSimpleName();
    }

    public C1952ik(C1635dL c1635dL, US us, String str, Uri uri, Map<String, String> mExtraData) {
        super(c1635dL, us, str);
        this.A00 = uri;
        this.A01 = mExtraData;
    }

    @Override
    public final ME A0G(String str) {
        UU uu = UU.A05;
        String queryParameter = this.A00.getQueryParameter(A00(0, 8, 109));
        if (!TextUtils.isEmpty(queryParameter)) {
            try {
                uu = UU.values()[Integer.valueOf(queryParameter).intValue()];
            } catch (Exception unused) {
            }
        }
        this.A02.ABK(this.A03, this.A01, this.A00.getQueryParameter(A00(8, 4, 21)), uu);
        return ME.A09;
    }
}
