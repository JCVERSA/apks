package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Arrays;

public final class S4 {
    public static boolean A04;
    public static byte[] A05;
    public static final String A06;
    public final S5 A00;
    public final S6 A01;
    public final C1609cu A02;
    public final InterfaceC1739f2 A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 31);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{122, 108, 71, 125, 96, 108, 106, 121, 107};
    }

    static {
        A01();
        A06 = S4.class.getSimpleName();
    }

    public S4(C1609cu c1609cu, InterfaceC0805Bn interfaceC0805Bn, S5 s5, S6 s6) {
        this.A02 = c1609cu;
        this.A03 = interfaceC0805Bn.A5M(EnumC1740f3.A06);
        this.A00 = s5;
        this.A01 = s6;
        this.A03.A3t(new C1670dv(this));
        A02();
    }

    public synchronized void A02() {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (!this.A03.AAV()) {
                this.A02.A05().AAF();
                return;
            }
            String btExtras = this.A03.A7a().optString(A00(0, 9, 7));
            if (!TextUtils.isEmpty(btExtras)) {
                this.A00.A04(this.A02, btExtras);
                if (!A04 || U7.A0j(this.A02)) {
                    A04 = true;
                    this.A01.A07();
                }
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
