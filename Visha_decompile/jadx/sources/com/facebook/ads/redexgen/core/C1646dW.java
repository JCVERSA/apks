package com.facebook.ads.redexgen.core;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

public class C1646dW extends ViewOutlineProvider {
    public final float A00;
    public final C1648dY A01;

    public C1646dW(C1648dY c1648dY, float f) {
        this.A01 = c1648dY;
        this.A00 = f;
    }

    @Override
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.A00);
    }
}
