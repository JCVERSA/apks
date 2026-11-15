package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.List;
import okio.Utf8;
import org.json.JSONObject;

public final class AnonymousClass74 extends AbstractC1910hy {
    public static byte[] A00 = null;
    public static final long serialVersionUID = 5751287062553772012L;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{52, 59, 46, 51, 44, Utf8.REPLACEMENT_BYTE};
    }

    public AnonymousClass74(List<C1089Mp> list) {
        super(list);
    }

    public static AnonymousClass74 A00(JSONObject jSONObject, C1635dL c1635dL) {
        AnonymousClass74 anonymousClass74 = new AnonymousClass74(AbstractC1910hy.A08(jSONObject, c1635dL, new C1901hm()));
        anonymousClass74.A29(jSONObject);
        anonymousClass74.A1I(A01(0, 6, 107));
        return anonymousClass74;
    }

    @Override
    public final int A0l() {
        return 0;
    }

    @Override
    public final int A0m() {
        return 0;
    }
}
