package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.view.WindowManager;
import java.util.Arrays;

public final class C2110lX implements FT {
    public static byte[] A01;
    public final WindowManager A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 115);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-7, -21, -16, -26, -15, -7};
    }

    public C2110lX(WindowManager windowManager) {
        this.A00 = windowManager;
    }

    public static C2110lX A00(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService(A01(0, 6, 15));
        if (windowManager != null) {
            return new C2110lX(windowManager);
        }
        return null;
    }

    @Override
    public final void AGn(FS fs) {
        fs.ACz(this.A00.getDefaultDisplay());
    }

    @Override
    public final void AJl() {
    }
}
