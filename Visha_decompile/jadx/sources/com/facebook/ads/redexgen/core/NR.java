package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public abstract class NR {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 115);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{ByteCode.T_LONG, 77, 81, 72, 73};
    }

    public static void A02(C1635dL c1635dL, AbstractC1910hy abstractC1910hy, boolean z, NP np) {
        if (!U7.A27(c1635dL)) {
            SF sf = new SF(c1635dL);
            NB nbA07 = abstractC1910hy.A20().A0H().A07();
            sf.A0e(new C1278Ua(abstractC1910hy.A25(), c1635dL.A0A()));
            if (nbA07 == null) {
                np.AEZ(AdError.CACHE_ERROR);
                return;
            }
            if (nbA07.A0O()) {
                np.AEa();
                return;
            }
            SB sb = new SB(nbA07.A0F(), abstractC1910hy.A17(), abstractC1910hy.A0v());
            sb.A04 = true;
            sb.A03 = A00(0, 5, 86);
            switch (NO.A00[nbA07.A0A().ordinal()]) {
                case 1:
                case 2:
                    sf.A0Y(sb);
                    break;
            }
            sf.A0c(new SD(abstractC1910hy.A23().A01(), -1, -1, abstractC1910hy.A17(), abstractC1910hy.A0v()));
            sf.A0c(new SD(nbA07.A0E(), -1, -1, abstractC1910hy.A17(), abstractC1910hy.A0v()));
            sf.A0X(new C1890hZ(c1635dL, np, sf, nbA07, z), new S8(abstractC1910hy.A17(), abstractC1910hy.A0v()));
            return;
        }
        np.AEa();
    }
}
