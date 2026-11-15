package com.yandex.mobile.ads.impl;

import android.view.View;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class aw1 extends hx0 {
    private final wg2<w21, wu0> d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aw1(CustomizableMediaView customizableMediaView, y21 y21Var, ox0 ox0Var, wg2<w21, wu0> wg2Var) {
        super(customizableMediaView, ox0Var);
        y45.j(customizableMediaView, "mediaView");
        y45.j(y21Var, "mraidWebViewAdapter");
        y45.j(ox0Var, "mediaViewRenderController");
        y45.j(wg2Var, "mraidWebViewWrapper");
        this.d = wg2Var;
    }

    @Override
    public final void a(View view) {
        CustomizableMediaView customizableMediaView = (CustomizableMediaView) view;
        y45.j(customizableMediaView, "mediaView");
        this.d.a();
        super.a(customizableMediaView);
    }

    @Override
    public final hx0.a d() {
        return hx0.a.c;
    }

    @Override
    public final void a(ig igVar, yg2 yg2Var, ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        this.d.a(igVar, yg2Var, ex0Var2 != null ? ex0Var2.b() : null);
    }

    @Override
    public final void a(CustomizableMediaView customizableMediaView) {
        y45.j(customizableMediaView, "mediaView");
        this.d.a();
    }

    @Override
    public final boolean a(View view, ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j((CustomizableMediaView) view, "mediaView");
        y45.j(ex0Var2, "mediaValue");
        wu0 wu0VarB = ex0Var2.b();
        if (wu0VarB != null) {
            return this.d.a(wu0VarB);
        }
        return false;
    }

    @Override
    public final void b(CustomizableMediaView customizableMediaView, ex0 ex0Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(ex0Var, "mediaValue");
        super.b(customizableMediaView, ex0Var);
        wu0 wu0VarB = ex0Var.b();
        if (wu0VarB == null) {
            return;
        }
        this.d.b(wu0VarB);
    }

    @Override
    public final void a(ex0 ex0Var) {
        y45.j(ex0Var, "mediaValue");
    }
}
