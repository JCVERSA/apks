package com.facebook.ads.redexgen.core;

import java.util.Arrays;

public class C1661dl implements LA {
    public static byte[] A01;
    public static String[] A02 = {"DkadTd3hzRbbbOHMxE7l2HcIgF77c2Wg", "0ZuZJmAU8cZIcQf3szyGmXM5AilOTJtQ", "s7OtZpyonCiYFMYFU1WCjmQvHXym6FPj", "3vySfQzjuhiXchKud6RTPthf0ulaYdWV", "CDvhYqwZm7dYJUP65EPDHmFcAmisUun7", "F", "FueLju8lXT0mR7zmJE5", "4fFvsSsvSh6WJapTHyxRGbQ9SIVR6447"};
    public final C1609cu A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 23);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {-89, -85, -97, -91, -93};
        String[] strArr = A02;
        if (strArr[4].charAt(11) == strArr[0].charAt(11)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "8YVOAkqjlCZIfPO923uAjm7vB9HJVDjx";
        strArr2[0] = "zjuPMStvlm1D7VGZIKzQB2odE0473uv0";
        A01 = bArr;
    }

    static {
        A01();
    }

    public C1661dl(C1609cu c1609cu) {
        this.A00 = c1609cu;
    }

    @Override
    public final void AAq(Throwable th) {
        this.A00.A08().AAy(A00(0, 5, 39), AbstractC1248Sv.A1e, new C1249Sw(th));
    }

    @Override
    public final void AB4(Throwable th) {
        this.A00.A08().AAy(A00(0, 5, 39), AbstractC1248Sv.A1g, new C1249Sw(th));
    }

    @Override
    public final void AGk(String str, int i, String str2, Long l, Long l2, C1044Kv c1044Kv) {
        SI.A05(this.A00, c1044Kv.A06, c1044Kv.A08, c1044Kv.A09, c1044Kv.A07, c1044Kv.A03, i, str2, l, l2, null);
    }

    @Override
    public final void AGl(String str, boolean z, C1044Kv c1044Kv) {
        SI.A04(this.A00, new SH(c1044Kv.A06, c1044Kv.A08, c1044Kv.A07, c1044Kv.A03, str), z);
    }
}
