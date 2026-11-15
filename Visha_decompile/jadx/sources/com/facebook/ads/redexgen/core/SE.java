package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.net.TrafficStats;
import java.util.Arrays;
import java.util.concurrent.Callable;

public class SE implements Callable<Boolean> {
    public static byte[] A02;
    public final SD A00;
    public final SF A01;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 2);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-35, -31, -43, -37, -39};
    }

    public SE(SF sf, SD sd) {
        this.A01 = sf;
        this.A00 = sd;
    }

    private final Boolean A00() throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        try {
            TrafficStats.setThreadStatsTag(61453);
            C1044Kv c1044Kv = new C1044Kv(this.A00.A08, this.A00.A07, this.A00.A06, A01(0, 5, 114), this.A00.A02, this.A00.A03);
            c1044Kv.A01 = this.A00.A05;
            c1044Kv.A00 = this.A00.A04;
            if (SI.A06(this.A01.A04)) {
                SF.A0F.put(this.A00.A08, c1044Kv);
            }
            boolean precacheResult = false;
            if (this.A01.A08) {
                precacheResult = SF.A03(this.A01.A04.A02()).AHu(c1044Kv, false).A01();
            } else if (this.A01.A03.A0F(this.A00) != null) {
                precacheResult = true;
            }
            SL sl = this.A00.A01;
            if (sl != null && sl.A02()) {
                int iA00 = sl.A00();
                int iA01 = sl.A01();
                if (iA00 <= 0 || iA01 <= 0) {
                    if (this.A01.A08) {
                        A04(this.A00.A08, c1044Kv);
                    } else {
                        A03(this.A00.A04, this.A00.A05);
                    }
                } else if (this.A01.A08) {
                    c1044Kv.A00 = iA00;
                    c1044Kv.A01 = iA01;
                    A04(this.A00.A08, c1044Kv);
                } else {
                    A03(iA00, iA01);
                }
            }
            return Boolean.valueOf(precacheResult);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            return null;
        }
    }

    private void A03(int i, int i2) {
        Bitmap bitmapA0G = this.A01.A03.A0G(this.A01.A04, this.A00.A08, i, i2, this.A00.A02);
        if (bitmapA0G == null) {
            return;
        }
        this.A01.A07.put(this.A00.A08, bitmapA0G);
    }

    private void A04(String str, C1044Kv c1044Kv) {
        Bitmap bitmapA00 = SF.A03(this.A01.A04.A02()).AHu(c1044Kv, true).A00();
        if (bitmapA00 == null) {
            return;
        }
        this.A01.A07.put(str, bitmapA00);
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
