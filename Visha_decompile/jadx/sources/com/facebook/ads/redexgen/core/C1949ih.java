package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

public class C1949ih extends AbstractRunnableC1322Vt {
    public static byte[] A02;
    public final MW A00;
    public final JSONObject A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{117, 97, 118, 98, 102, 118, 125, 112, 106, 76, 112, 114, 99, 99, 122, 125, 116};
    }

    public C1949ih(MW mw, JSONObject jSONObject) {
        this.A00 = mw;
        this.A01 = jSONObject;
    }

    @Override
    public final void A07() {
        try {
            this.A00.A05.await();
            synchronized (this.A00.A02) {
                try {
                    this.A00.A02.A0B(this.A01);
                    this.A00.A06.countDown();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (InterruptedException e) {
            this.A00.A03.A08().AAy(A00(0, 17, 25), AbstractC1248Sv.A1B, new C1249Sw(e));
        } catch (JSONException e2) {
            this.A00.A0M();
            this.A00.A03.A08().AAy(A00(0, 17, 25), AbstractC1248Sv.A1A, new C1249Sw(e2));
        }
    }
}
