package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

public class ViewOnClickListenerC1500b9 implements View.OnClickListener {
    public static byte[] A01;
    public final JU A00;

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
        A01 = new byte[]{-58, -63, -63, -66, -76, -77, -60};
    }

    public ViewOnClickListenerC1500b9(JU ju) {
        this.A00 = ju;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            if (!this.A00.A0Q) {
                this.A00.A0O.A02(A00(0, 7, 17));
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
