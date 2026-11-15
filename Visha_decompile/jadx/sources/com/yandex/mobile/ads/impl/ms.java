package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import defpackage.y45;
import java.util.List;

public final class ms implements a82 {
    private final ns a;
    private final gh b;
    private final an0 c;
    private final xm0 d;

    public ms(Context context, bv1 bv1Var, am0 am0Var, co0 co0Var, gt gtVar, zb2 zb2Var, mg2 mg2Var, yk1 yk1Var, nb2 nb2Var, ns nsVar, in0 in0Var, hn0 hn0Var, zg zgVar, List list, gh ghVar, an0 an0Var, qn0 qn0Var, pn0 pn0Var, xm0 xm0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(am0Var, "customUiElementsHolder");
        y45.j(co0Var, "instreamVastAdPlayer");
        y45.j(gtVar, "coreInstreamAdBreak");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(mg2Var, "videoTracker");
        y45.j(yk1Var, "imageProvider");
        y45.j(nb2Var, "playbackListener");
        y45.j(nsVar, "controlsViewConfigurator");
        y45.j(in0Var, "assetsWrapperProvider");
        y45.j(hn0Var, "assetsWrapper");
        y45.j(zgVar, "assetViewConfiguratorsCreator");
        y45.j(list, "assetViewConfigurators");
        y45.j(ghVar, "assetsViewConfigurator");
        y45.j(an0Var, "instreamAdViewUiElementsManager");
        y45.j(qn0Var, "instreamDesignProvider");
        y45.j(pn0Var, "instreamDesign");
        y45.j(xm0Var, "instreamAdUiElementsController");
        this.a = nsVar;
        this.b = ghVar;
        this.c = an0Var;
        this.d = xm0Var;
    }

    @Override
    public final void a(t70 t70Var, ln0 ln0Var) {
        y45.j(t70Var, "instreamAdView");
        y45.j(ln0Var, "controlsState");
        ob2 ob2VarA = this.d.a(t70Var);
        if (ob2VarA != null) {
            this.a.a(ob2VarA, ln0Var);
            this.b.a(ob2VarA);
            t70Var.addView(ob2VarA.a(), new ViewGroup.LayoutParams(-1, -1));
        }
        this.c.getClass();
        y45.j(t70Var, "instreamAdView");
        t70Var.setAdUiElements(ob2VarA);
    }

    @Override
    public final void a(t70 t70Var) {
        y45.j(t70Var, "instreamAdView");
        this.c.getClass();
        y45.j(t70Var, "instreamAdView");
        ob2 adUiElements = t70Var.getAdUiElements();
        if (adUiElements != null) {
            t70Var.removeView(adUiElements.a());
        }
        this.c.getClass();
        y45.j(t70Var, "instreamAdView");
        t70Var.setAdUiElements(null);
    }
}
