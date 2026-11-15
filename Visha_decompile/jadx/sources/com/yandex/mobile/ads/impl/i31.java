package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.fullscreen.template.view.ExtendedViewContainer;
import defpackage.y45;
import java.util.List;

public final class i31 {
    private final o31 a = new o31();

    public final ExtendedViewContainer a(Context context, List<xj0> list) {
        y45.j(context, "context");
        y45.j(list, "imageValues");
        ExtendedViewContainer extendedViewContainer = new ExtendedViewContainer(context, null, 0, 6, null);
        this.a.getClass();
        extendedViewContainer.setMeasureSpecProvider(new lm1((float) o31.a(list), new su0.a()));
        return extendedViewContainer;
    }
}
