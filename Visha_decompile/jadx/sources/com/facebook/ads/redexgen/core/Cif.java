package com.facebook.ads.redexgen.core;

import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONException;

public class Cif extends AbstractRunnableC1322Vt {
    public static byte[] A02;
    public final MW A00;
    public final String A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 55);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-77, -65, -78, -66, -62, -78, -69, -80, -58, -84, -80, -82, -67, -67, -74, -69, -76};
    }

    public Cif(MW mw, String str) {
        this.A00 = mw;
        this.A01 = str;
    }

    @Override
    public final void A07() {
        try {
            this.A00.A06.await();
            synchronized (this.A00.A02) {
                try {
                    Iterator<String> itKeys = this.A00.A02.A05().keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        if (this.A00.A0J(this.A01)) {
                            this.A00.A0E((N2) this.A00.A02.A05().get(next), next, next.equals(this.A01));
                        }
                    }
                    this.A00.A02.A06();
                    this.A00.A08();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (InterruptedException e) {
            InterfaceC1247Su interfaceC1247SuA08 = this.A00.A03.A08();
            String encryptedId = A00(0, 17, 22);
            interfaceC1247SuA08.AAy(encryptedId, AbstractC1248Sv.A1B, new C1249Sw(e));
        } catch (JSONException e2) {
            this.A00.A0M();
            InterfaceC1247Su interfaceC1247SuA09 = this.A00.A03.A08();
            String encryptedId2 = A00(0, 17, 22);
            interfaceC1247SuA09.AAy(encryptedId2, AbstractC1248Sv.A1A, new C1249Sw(e2));
        }
    }
}
