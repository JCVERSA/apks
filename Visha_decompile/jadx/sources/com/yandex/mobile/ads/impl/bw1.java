package com.yandex.mobile.ads.impl;

import android.view.View;
import androidx.viewpager2.widget.ViewPager2;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;
import java.util.List;

public final class bw1 extends hx0 {
    private final wg2<ViewPager2, List<xj0>> d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bw1(CustomizableMediaView customizableMediaView, s31 s31Var, ox0 ox0Var, wg2<ViewPager2, List<xj0>> wg2Var) {
        super(customizableMediaView, ox0Var);
        y45.j(customizableMediaView, "mediaView");
        y45.j(s31Var, "multiBannerViewAdapter");
        y45.j(ox0Var, "mediaViewRenderController");
        y45.j(wg2Var, "multiBannerViewWrapper");
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
        return hx0.a.e;
    }

    @Override
    public final void a(ig igVar, yg2 yg2Var, ex0 ex0Var) {
        ex0 ex0Var2 = ex0Var;
        y45.j(igVar, "asset");
        y45.j(yg2Var, "viewConfigurator");
        this.d.a(igVar, yg2Var, ex0Var2 != null ? ex0Var2.a() : null);
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
        List<xj0> listA = ex0Var2.a();
        if (listA == null || !(!listA.isEmpty())) {
            return false;
        }
        return this.d.a(listA);
    }

    @Override
    public final void b(CustomizableMediaView customizableMediaView, ex0 ex0Var) {
        y45.j(customizableMediaView, "mediaView");
        y45.j(ex0Var, "mediaValue");
        super.b(customizableMediaView, ex0Var);
        List<xj0> listA = ex0Var.a();
        if (listA == null || !(!listA.isEmpty())) {
            return;
        }
        this.d.b(listA);
    }

    @Override
    public final void a(ex0 ex0Var) {
        y45.j(ex0Var, "mediaValue");
        List<xj0> listA = ex0Var.a();
        if (listA == null || !(!listA.isEmpty())) {
            return;
        }
        this.d.b(listA);
    }
}
