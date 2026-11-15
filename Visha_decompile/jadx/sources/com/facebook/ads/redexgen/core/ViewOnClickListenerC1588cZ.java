package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

public class ViewOnClickListenerC1588cZ implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"LL2XfU1vw2R3ujffauddUg7rraqbyi1p", "rwjrJH82r2JL17EShMJhYMD2uRF1qmZm", "w3YwSrn", "ftBG52oja9701ahczInxUD", "SGNloucEUEXIIB22exVNC", "8ErdUh5XcMZmDxcdUTtrM", "tW", "rDyZoa1wClRKWV36n1Mcmp0wuxyQ13Yr"};
    public final C06153r A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 30);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{88, 85, 81, 84, 85, 66};
    }

    static {
        A01();
    }

    public ViewOnClickListenerC1588cZ(C06153r c06153r) {
        this.A00 = c06153r;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A03 != null) {
                this.A00.A03.A1A(A00(0, 6, 46));
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            if (A02[3].length() == 8) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[2] = "BwplKzV";
            strArr[6] = "X2";
        }
    }
}
