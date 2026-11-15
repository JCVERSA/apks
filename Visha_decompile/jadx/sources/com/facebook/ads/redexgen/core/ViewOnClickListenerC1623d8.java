package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

public class ViewOnClickListenerC1623d8 implements View.OnClickListener {
    public static byte[] A01;
    public final C1625dA A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{25, 22, 18, 21, 22, 35};
    }

    public ViewOnClickListenerC1623d8(C1625dA c1625dA) {
        this.A00 = c1625dA;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0g == null) {
                return;
            }
            this.A00.A0g.A0E(A00(0, 6, 115));
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
