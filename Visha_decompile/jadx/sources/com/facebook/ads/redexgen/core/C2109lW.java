package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import androidx.media3.common.PlaybackException;
import java.util.Arrays;

public final class C2109lW implements FT, DisplayManager.DisplayListener {
    public static byte[] A02;
    public FS A00;
    public final DisplayManager A01;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{15, 20, 30, 27, 23, 12, 36};
    }

    public C2109lW(DisplayManager displayManager) {
        this.A01 = displayManager;
    }

    private Display A00() {
        return this.A01.getDisplay(0);
    }

    public static C2109lW A01(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(A02(0, 7, 65));
        if (displayManager != null) {
            return new C2109lW(displayManager);
        }
        return null;
    }

    @Override
    public final void AGn(FS fs) {
        this.A00 = fs;
        this.A01.registerDisplayListener(this, AbstractC06244a.A0Y());
        fs.ACz(A00());
    }

    @Override
    public final void AJl() {
        this.A01.unregisterDisplayListener(this);
        this.A00 = null;
    }

    @Override
    public final void onDisplayAdded(int i) {
    }

    @Override
    public final void onDisplayChanged(int i) {
        if (this.A00 != null && i == 0) {
            this.A00.ACz(A00());
        }
    }

    @Override
    public final void onDisplayRemoved(int i) {
    }
}
