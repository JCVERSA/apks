package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

public class ViewOnClickListenerC1521bU implements View.OnClickListener {
    public static byte[] A01;
    public final C0989Is A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{7, -6, -11, -10, 0};
    }

    public ViewOnClickListenerC1521bU(C0989Is c0989Is) {
        this.A00 = c0989Is;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0m(A00(0, 5, 93));
            if (this.A00.A0c.A0E() != null) {
                this.A00.A0c.A0E().ABr();
            }
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
