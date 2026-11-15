package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Map;
import okio.Utf8;

public final class C7P extends AbstractC1954im {
    public static byte[] A03;
    public Map<String, String> A00;
    public boolean A01;
    public final Uri A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 77);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{88, 93, 90, 95, 59, 60, 39, 58, 45, 23, 61, 58, 36, 23, Utf8.REPLACEMENT_BYTE, 45, 42, 23, 46, 41, 36, 36, 42, 41, 43, 35};
    }

    public C7P(C1635dL c1635dL, US us, String str, Uri uri, Map<String, String> mExtraData) {
        super(c1635dL, us, str, null, true, true);
        this.A02 = uri;
        this.A00 = mExtraData;
    }

    public C7P(C1635dL c1635dL, US us, String str, Uri uri, Map<String, String> mExtraData, boolean z) {
        this(c1635dL, us, str, uri, mExtraData);
        this.A01 = z;
    }

    @Override
    public final ME A0H() {
        A0J(this.A00, null);
        return ME.A09;
    }

    public final Uri A0M() {
        String queryParameter = this.A02.getQueryParameter(A00(4, 22, 5));
        if (this.A01 && !TextUtils.isEmpty(queryParameter)) {
            return WQ.A00(queryParameter);
        }
        Uri uri = this.A02;
        String url = A00(0, 4, 121);
        return WQ.A00(uri.getQueryParameter(url));
    }
}
