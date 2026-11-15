package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.widget.FrameLayout;
import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class lx0 {
    private final bx0 a;
    private final b31 b;

    public lx0() {
        this(new bx0(), new b31());
    }

    public final aw1 a(CustomizableMediaView customizableMediaView, wu0 wu0Var, pk0 pk0Var, ic1 ic1Var, ox0 ox0Var) throws tj2 {
        y45.j(customizableMediaView, "mediaView");
        y45.j(wu0Var, "media");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(ic1Var, "nativeWebViewController");
        y45.j(ox0Var, "mediaViewRenderController");
        Context context = customizableMediaView.getContext();
        b31 b31Var = this.b;
        y45.g(context);
        b31Var.getClass();
        y45.j(context, "context");
        y45.j(wu0Var, "media");
        y45.j(pk0Var, "impressionEventsObservable");
        y45.j(ic1Var, "nativeWebViewController");
        w21 w21VarB = d31.c.a(context).b(wu0Var);
        if (w21VarB == null) {
            try {
                w21VarB = new w21(context);
            } catch (Throwable unused) {
                throw new tj2();
            }
        }
        n21 n21VarK = w21VarB.k();
        n21VarK.a(pk0Var);
        n21VarK.a((s11) ic1Var);
        n21VarK.a((ze1) ic1Var);
        this.a.getClass();
        y45.j(customizableMediaView, "mediaView");
        y45.j(w21VarB, "mraidWebView");
        Context context2 = customizableMediaView.getContext();
        y45.i(context2, "getContext(...)");
        if (!x80.a(context2, w80.e)) {
            customizableMediaView.removeAllViews();
        }
        customizableMediaView.addView(w21VarB, new FrameLayout.LayoutParams(-1, -1));
        y21 y21Var = new y21(w21VarB);
        return new aw1(customizableMediaView, y21Var, ox0Var, new wg2(y21Var));
    }

    public lx0(bx0 bx0Var, b31 b31Var) {
        y45.j(bx0Var, "mediaSubViewBinder");
        y45.j(b31Var, "mraidWebViewFactory");
        this.a = bx0Var;
        this.b = b31Var;
    }
}
