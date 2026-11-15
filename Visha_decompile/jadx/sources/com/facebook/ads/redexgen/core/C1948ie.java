package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import org.json.JSONException;

public class C1948ie extends AbstractRunnableC1322Vt {
    public static byte[] A02;
    public final MW A00;
    public final String A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 19);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{36, 48, 39, 51, 55, 39, 44, 33, 59, 29, 33, 35, 50, 50, 43, 44, 37};
    }

    public C1948ie(MW mw, String str) {
        this.A00 = mw;
        this.A01 = str;
    }

    @Override
    public final void A07() {
        String strA00 = A00(0, 17, 81);
        try {
            this.A00.A06.await();
            if (this.A00.A0J(this.A01)) {
                ((N2) this.A00.A02.A05().get(this.A01)).A04((int) (System.currentTimeMillis() / 1000));
                this.A00.A02.A07(this.A01);
                this.A00.A02.A06();
                this.A00.A08();
            }
        } catch (InterruptedException e) {
            this.A00.A03.A08().AAy(strA00, AbstractC1248Sv.A1B, new C1249Sw(e));
        } catch (JSONException e2) {
            this.A00.A0M();
            this.A00.A03.A08().AAy(strA00, AbstractC1248Sv.A1A, new C1249Sw(e2));
        }
    }
}
