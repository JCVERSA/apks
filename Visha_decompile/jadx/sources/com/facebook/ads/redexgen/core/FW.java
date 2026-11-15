package com.facebook.ads.redexgen.core;

import android.hardware.display.DisplayManager;

public final class FW implements DisplayManager.DisplayListener {
    public final DisplayManager A00;
    public final FY A01;

    public FW(FY fy, DisplayManager displayManager) {
        this.A01 = fy;
        this.A00 = displayManager;
    }

    public final void A00() {
        this.A00.registerDisplayListener(this, null);
    }

    public final void A01() {
        this.A00.unregisterDisplayListener(this);
    }

    @Override
    public final void onDisplayAdded(int i) {
    }

    @Override
    public final void onDisplayChanged(int i) {
        if (i != 0) {
            return;
        }
        this.A01.A03();
    }

    @Override
    public final void onDisplayRemoved(int i) {
    }
}
