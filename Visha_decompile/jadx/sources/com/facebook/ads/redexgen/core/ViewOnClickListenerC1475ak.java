package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;
import okio.Utf8;

public class ViewOnClickListenerC1475ak implements View.OnClickListener {
    public static byte[] A01;
    public final C06545e A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 96);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Utf8.REPLACEMENT_BYTE, 59, 55, 49, 51};
    }

    public ViewOnClickListenerC1475ak(C06545e c06545e) {
        this.A00 = c06545e;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0E(A00(0, 5, 54));
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
