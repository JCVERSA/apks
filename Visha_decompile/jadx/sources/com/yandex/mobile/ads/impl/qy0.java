package com.yandex.mobile.ads.impl;

import android.view.View;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class qy0 extends hx0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qy0(CustomizableMediaView customizableMediaView, ox0 ox0Var) {
        super(customizableMediaView, ox0Var);
        y45.j(customizableMediaView, "mediaView");
        y45.j(ox0Var, "mediaViewRenderController");
    }

    @Override
    public final void a(CustomizableMediaView customizableMediaView) {
        y45.j(customizableMediaView, "mediaView");
    }

    @Override
    public final void b(View view, ex0 ex0Var) {
        y45.j((CustomizableMediaView) view, "mediaView");
        y45.j(ex0Var, "mediaValue");
    }

    @Override
    public final hx0.a d() {
        return hx0.a.g;
    }

    @Override
    public final boolean a(View view, ex0 ex0Var) {
        y45.j((CustomizableMediaView) view, "mediaView");
        y45.j(ex0Var, "mediaValue");
        return true;
    }

    @Override
    public final void b(CustomizableMediaView customizableMediaView, ex0 ex0Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(ex0Var, "mediaValue");
    }

    @Override
    public final void a(ex0 ex0Var) {
        y45.j(ex0Var, "mediaValue");
    }
}
