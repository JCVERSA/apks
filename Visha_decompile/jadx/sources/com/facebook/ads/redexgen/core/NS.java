package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Iterator;

public abstract class NS {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 102);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{10, 76, 80, 73, 72, 121, 126, 100, 117, 98, 99, 100, 121, 100, 121, 113, 124, 101, 114, 96, 118, 101, 115, 114, 115, 72, 97, 126, 115, 114, 120};
    }

    public static void A02(C1635dL c1635dL, SF sf, AnonymousClass73 anonymousClass73) {
        sf.A0d(new SD(anonymousClass73.A23().A01(), C1601cm.A04, C1601cm.A04, anonymousClass73.A17(), A00(17, 14, 113)));
        boolean zA1Y = anonymousClass73.A1Y();
        if (zA1Y) {
            SB sb = new SB(anonymousClass73.A0s(), anonymousClass73.A17(), A00(17, 14, 113));
            sb.A04 = true;
            sb.A03 = A00(0, 5, 66);
            sf.A0Y(sb);
        }
        boolean isDSL = C1690eF.A03();
        boolean zA2s = U7.A2s(c1635dL, isDSL);
        SB sb2 = new SB(anonymousClass73.A20().A0H().A09(), anonymousClass73.A17(), A00(17, 14, 113), anonymousClass73.A20().A0H().A06());
        if (zA1Y && !zA2s) {
            sf.A0Y(sb2);
        } else {
            sf.A0b(sb2);
        }
        sf.A0d(new SD(anonymousClass73.A20().A0H().A08(), NN.A00(anonymousClass73.A20().A0H()), NN.A01(anonymousClass73.A20().A0H()), anonymousClass73.A17(), A00(17, 14, 113)));
        Iterator<String> it = anonymousClass73.A20().A0K().A02().iterator();
        while (isDSL) {
            String url = it.next();
            sf.A0d(new SD(url, -1, -1, anonymousClass73.A17(), A00(17, 14, 113)));
        }
    }

    public static void A03(C1635dL c1635dL, SF sf, AnonymousClass73 anonymousClass73) {
        int i = 0;
        for (C1089Mp c1089Mp : anonymousClass73.A27()) {
            SD sd = new SD(c1089Mp.A0H().A08(), NN.A00(c1089Mp.A0H()), NN.A01(c1089Mp.A0H()), anonymousClass73.A17(), A00(5, 12, 118));
            if (i == 0) {
                sf.A0c(sd);
            } else {
                sf.A0d(sd);
            }
            Iterator<String> it = c1089Mp.A0K().A02().iterator();
            while (it.hasNext()) {
                sf.A0d(new SD(it.next(), -1, -1, anonymousClass73.A17(), A00(5, 12, 118)));
            }
            if (!TextUtils.isEmpty(c1089Mp.A0H().A09())) {
                new SB(c1089Mp.A0H().A09(), anonymousClass73.A17(), A00(5, 12, 118), c1089Mp.A0H().A06()).A04 = false;
            }
            i++;
        }
    }
}
