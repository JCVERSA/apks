package com.yandex.mobile.ads.impl;

import android.view.View;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class cw1 extends hx0 {
    private final wg2<yb1, lb2> d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cw1(CustomizableMediaView customizableMediaView, rg2 rg2Var, ox0 ox0Var, wg2<yb1, lb2> wg2Var) {
        super(customizableMediaView, ox0Var);
        y45.j(customizableMediaView, "mediaView");
        y45.j(rg2Var, "videoViewAdapter");
        y45.j(ox0Var, "mediaViewRenderController");
        y45.j(wg2Var, "videoViewWrapper");
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
        return hx0.a.d;
    }

    @Override
    public final void a(ig igVar, yg2 yg2Var, ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        this.d.a(igVar, yg2Var, ex0Var2 != null ? ex0Var2.c() : null);
    }

    @Override
    public final void a() {
        this.d.b();
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
        lb2 lb2VarC = ex0Var2.c();
        if (lb2VarC != null) {
            return this.d.a(lb2VarC);
        }
        return false;
    }

    @Override
    public final void b(CustomizableMediaView customizableMediaView, ex0 ex0Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(ex0Var, "mediaValue");
        super.b(customizableMediaView, ex0Var);
        lb2 lb2VarC = ex0Var.c();
        if (lb2VarC == null) {
            return;
        }
        this.d.b(lb2VarC);
    }

    @Override
    public final void a(ex0 ex0Var) {
        y45.j(ex0Var, "mediaValue");
    }
}
