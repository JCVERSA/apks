package com.facebook.ads.redexgen.core;

import android.net.TrafficStats;
import java.util.Arrays;
import java.util.concurrent.Callable;

public class SC implements Callable<Boolean> {
    public static byte[] A02;
    public final SB A00;
    public final SF A01;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-34, -46, -29, -36, -26, -31, -25, -38, -43, -42, -32};
    }

    public SC(SF sf, SB sb) {
        this.A01 = sf;
        this.A00 = sb;
    }

    private final Boolean A00() throws Throwable {
        String strA01;
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        try {
            TrafficStats.setThreadStatsTag(61453);
            if (this.A00.A04) {
                strA01 = A01(0, 6, 72);
            } else {
                strA01 = A01(6, 5, 72);
            }
            String str = this.A00.A08;
            String creativeType = this.A00.A07;
            C1044Kv c1044Kv = new C1044Kv(str, creativeType, this.A00.A06, strA01, this.A00.A02, this.A00.A05);
            c1044Kv.A04 = this.A00.A03;
            c1044Kv.A02 = this.A00.A01;
            c1044Kv.A05 = this.A00.A04;
            if (SI.A06(this.A01.A04)) {
                SF.A0F.put(this.A00.A08, c1044Kv);
            }
            return Boolean.valueOf(SF.A03(this.A01.A04.A02()).AHw(c1044Kv) != null);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            return null;
        }
    }

    @Override
    public final Boolean call() throws Exception {
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        try {
            return A00();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            return null;
        }
    }
}
