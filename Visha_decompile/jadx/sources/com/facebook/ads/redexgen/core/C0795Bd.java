package com.facebook.ads.redexgen.core;

import android.util.Log;
import java.util.Arrays;

public final class C0795Bd implements InterfaceC1811gE {
    public static byte[] A02;
    public static final C0795Bd A03;
    public String A01 = A01(1, 7, 98);
    public int A00 = 5;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 42);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A02 = new byte[]{-33, 1, -6, -9, -6, -5, 3, -6};
    }

    static {
        A05();
        A03 = new C0795Bd();
    }

    public static C0795Bd A00() {
        return A03;
    }

    private String A02(String str) {
        if (this.A01 != null) {
            return this.A01 + A01(0, 1, 123) + str;
        }
        return str;
    }

    public static String A03(String str, Throwable th) {
        return str + '\n' + A04(th);
    }

    public static String A04(Throwable th) {
        if (th == null) {
            return A01(0, 0, 21);
        }
        return Log.getStackTraceString(th);
    }

    private void A06(int i, String str, String str2) {
        Log.println(i, A02(str), str2);
    }

    private void A07(int i, String str, String str2, Throwable th) {
        Log.println(i, A02(str), A03(str2, th));
    }

    @Override
    public final void A9l(String str, String str2) {
        A06(4, str, str2);
    }

    @Override
    public final void A9m(String str, String str2, Throwable th) {
        A07(4, str, str2, th);
    }

    @Override
    public final boolean AAP(int i) {
        return this.A00 <= i;
    }

    @Override
    public final void AIo(int i) {
        this.A00 = i;
    }
}
