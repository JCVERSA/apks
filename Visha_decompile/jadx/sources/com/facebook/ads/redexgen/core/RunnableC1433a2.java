package com.facebook.ads.redexgen.core;

import android.animation.ObjectAnimator;
import java.util.Arrays;

public class RunnableC1433a2 implements Runnable {
    public static byte[] A01;
    public final C06665q A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 45);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{12, 1, 29, 5, 12};
    }

    public RunnableC1433a2(C06665q c06665q) {
        this.A00 = c06665q;
    }

    @Override
    public final void run() throws Throwable {
        String strA00 = A00(0, 5, 64);
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.A0T.A0F().AJx();
            ObjectAnimator.ofFloat(this.A00.A0Q, strA00, 1.0f, 0.0f).setDuration(100L).start();
            ObjectAnimator.ofFloat(this.A00.A0P, strA00, 1.0f, 0.0f).setDuration(100L).start();
            ObjectAnimator duration = ObjectAnimator.ofFloat(((AbstractC1426Zv) this.A00).A09, strA00, 1.0f, 0.0f).setDuration(100L);
            duration.addListener(new C1432a1(this));
            duration.start();
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
