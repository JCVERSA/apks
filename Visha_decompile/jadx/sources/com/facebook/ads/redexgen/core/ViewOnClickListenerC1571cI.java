package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

public class ViewOnClickListenerC1571cI implements View.OnClickListener {
    public static byte[] A01;
    public final C4K A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-84, -81, -81, -80, -65, -84, -76, -73, -66};
    }

    public ViewOnClickListenerC1571cI(C4K c4k) {
        this.A00 = c4k;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (!this.A00.A0B) {
                this.A00.A0o(A00(0, 9, 10));
                this.A00.A0V.ABr();
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
