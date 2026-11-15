package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import okio.Utf8;
import org.json.JSONException;
import org.json.JSONObject;

public final class LN {
    public static byte[] A02;
    public final LO A00;
    public final String A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{55, 36, Utf8.REPLACEMENT_BYTE, Utf8.REPLACEMENT_BYTE, 52, 61, 14};
    }

    public LN(LO lo, String str) {
        this.A00 = lo;
        this.A01 = str;
    }

    public final void A02(JSONObject jSONObject) {
        try {
            jSONObject.put(A00(0, 7, 99) + this.A00.getName(), this.A01);
        } catch (JSONException unused) {
        }
    }
}
