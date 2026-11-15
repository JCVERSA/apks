package com.facebook.ads.redexgen.core;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

public class C1645dV extends ViewOutlineProvider {
    public final C1648dY A00;

    public C1645dV(C1648dY c1648dY) {
        this.A00 = c1648dY;
    }

    @Override
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), 8.0f);
    }
}
